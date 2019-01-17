
from app import app
from app import db

from posts.blueprint_postapp import posts

import view

if __name__=='__main__':
    app.register_blueprint(posts, url_prefix='/blog')
    app.run()

