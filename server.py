from flask import Flask, render_template, request, redirect, url_for
from random import randint
import complimentutil, MySQLdb
app = Flask(__name__)

@app.route('/')
def mainIndex():
    page = 'index'
    return render_template('index.html', page=page)
  
@app.route('/about')
def about():
    page = 'about'
    return render_template('about.html', page=page)
  
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
    return render_template('compliment.html', page=page, getCompliment=getCompliment, rows=rows, randomnum=randomnum)
  return render_template('compliment.html', page=page, getCompliment=getCompliment)
#return redirect(url_for('compliment.html'))

@app.route('/blog')
def blog():
    page = 'blog'
    return render_template('blog.html', page=page)
  

  
if __name__ == '__main__':
    app.debug=True
    app.run(host='0.0.0.0')
