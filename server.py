from flask import Flask, render_template, request, redirect, url_for, session
from random import randint
import complimentutil, MySQLdb
app = Flask(__name__)

app.secret_key = 'Zq4oA4Dqq3' 
loggedIn = False

@app.route('/')
def mainIndex():
    page = 'index'
    return render_template('index.html', page=page, loggedIn=loggedIn)
  
@app.route('/about')
def about():
    page = 'about'
    return render_template('about.html', page=page, loggedIn=loggedIn)
  
@app.route('/compliment', methods=['GET', 'POST'])
def compliment():
  page = 'compliment'
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
    page = 'blog'
    return render_template('blog.html', page=page, loggedIn=loggedIn)
  
@app.route('/login', methods=['GET', 'POST'])
def login():
    page = 'login'  
  
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
      query = "SELECT * from users WHERE username = '%s' AND password = SHA2('%s', 0)" % (username, pw)
      print query
      cur.execute(query)
           
      if cur.fetchone():
         session['username'] = currentUser         
         qy = "SELECT * from users WHERE username = '%s' AND password = SHA2('%s', 0)" % (username, pw)
         print qy
         cur.execute(qy)
         row = cur.fetchone()
         
         q = "SELECT * from users WHERE username = '%s'" % session['username']
         print q
         cur.execute(q)          
         loggedIn=True
         return redirect(url_for('mainIndex'))
      else:
        print "mistake"
    return render_template('login.html', page=page, loggedIn=loggedIn)
  
@app.route('/register', methods=['GET', 'POST'])
def register():
    page = 'register'
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
