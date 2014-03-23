from flask import Flask, render_template, request, redirect, url_for, session
from random import randint
import complimentutil, MySQLdb
app = Flask(__name__)

app.secret_key = 'Zq4oA4Dqq3' 
loggedIn = False

@app.route('/')
def mainIndex():
    page = 'Index'
    return render_template('index.html', page=page, loggedIn=loggedIn)
  
@app.route('/about')
def about():
    page = 'About'
    return render_template('about.html', page=page, loggedIn=loggedIn)
  
@app.route('/compliment', methods=['GET', 'POST'])
def compliment():
  page = 'Compliment'
  getCompliment = False
  
  
  if request.method == 'POST':
    getCompliment = True
    db = complimentutil.db_connect()
    cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
    randomnum = randint(1,50) #Inclusive
    query = "SELECT Adjective FROM words WHERE ID = '%s'" %randomnum
    cur.execute(query)   
    rows = cur.fetchone()
    return render_template('compliment.html', page=page, getCompliment=getCompliment, rows=rows, randomnum=randomnum, loggedIn=loggedIn)
  return render_template('compliment.html', page=page, getCompliment=getCompliment, loggedIn=loggedIn)


@app.route('/blog')
def blog():
    page = 'Blog'
    return render_template('blog.html', page=page, loggedIn=loggedIn)
  
@app.route('/login', methods=['GET', 'POST'])
def login():
    page = 'Login'  
  
    global currentUser
    global loggedIn
    db = complimentutil.db_connect()
    cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
    # if user typed in a post ...
    if request.method == 'POST':
      print "HI"
      username = MySQLdb.escape_string(request.form['username'])
      currentUser = username
      
      pw = MySQLdb.escape_string(request.form['pw'])
      query = "SELECT u.username, up.password FROM users u INNER JOIN user_passwords up ON u.id = up.id WHERE u.username = '%s' AND up.password = SHA2('%s', 0)" % (username, pw)
      print query
      cur.execute(query)
           
      if cur.fetchone():
         session['username'] = currentUser                  
         loggedIn=True
         return redirect(url_for('mainIndex'))
      else:
        print "mistake"
    return render_template('login.html', page=page, loggedIn=loggedIn)
  
@app.route('/register', methods=['GET', 'POST'])
def register():
    page = 'Register'
    global currentUser
    global loggedIn
    db = complimentutil.db_connect()
    cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
    # if user typed in a post ...
    if request.method == 'POST':
      print "HI"
      username = MySQLdb.escape_string(request.form['username'])
      currentUser = username
      pw = MySQLdb.escape_string(request.form['pw'])
      
      query = "INSERT INTO users (username) VALUES ('%s')" % username
      print query
      cur.execute(query)
      
      qy = "INSERT INTO user_passwords (password) VALUES (SHA2('%s', 0))" % pw
      print qy
      cur.execute(qy)
      
      session['username'] = currentUser         
      q = "SELECT * from users WHERE username = '%s'" % session['username']
      print q
      cur.execute(q)          
      loggedIn=True
      return redirect(url_for('mainIndex'))
      
    return render_template('register.html', page=page, loggedIn=loggedIn)
  
  
@app.route('/logout', methods=['GET', 'POST'])
def logout():
    global loggedIn
    session.pop('username', None)
    loggedIn=False
    return redirect(url_for('mainIndex'))
  

  
if __name__ == '__main__':
    app.debug=True
    app.run(host='0.0.0.0')
