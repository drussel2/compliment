from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def mainIndex():
    page = 'index'
    return render_template('index.html', page=page)
  
@app.route('/about')
def about():
    page = 'about'
    return render_template('about.html', page=page)
  
if __name__ == '__main__':
    app.debug=True
    app.run(host='0.0.0.0')
