#!/usr/bin/python3
# -*- coding: utf-8 -*-

from .app import app as app
from .app import db as db

from .posts.blueprint_postapp import posts as posts

import view as view


app.register_blueprint(posts, url_prefix='/blog')

if __name__=='__main__':
    app.run(host='0.0.0.0')