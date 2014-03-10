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
  
@app.route('/compliment')
def compliment():
  db = complimentutil.db_connect()
  cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
  randomnum = randint(1,50) #Inclusive
  query = "SELECT Adjective FROM words WHERE ID = '%s'" %randomnum
  cur.execute(query)
  db.commit()
  return redirect(url_for('compliment.html'))
  
if __name__ == '__main__':
    app.debug=True
    app.run(host='0.0.0.0')
