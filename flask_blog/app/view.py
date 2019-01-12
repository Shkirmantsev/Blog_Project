from app import app

@app.route('/')
def index():
    return 'Hello world1'

@app.route('/blog')
def index2():
    return '<h1>Hello world2</h1>'