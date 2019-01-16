from app import app
from flask import render_template

@app.route('/')
def index():
    name='Dimon'
    return render_template('index.html',n=name)

""""@app.route('/blog')
def index2():
    return '<h1>Hello world2</h1>'"""