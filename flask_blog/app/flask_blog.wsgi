#!/usr/bin/python3

# Next line only for virtual env:
#python_home = '/mnt/data/PROJECTS/Blog/flask_blog/venv_flask'

import sys
import site
# Calculate path to site-packages directory.

#### Next 3 line only for virtual env:
#python_version = '.'.join(map(str, sys.version_info[:2]))
#site_packages = python_home + '/lib/python%s/site-packages' % python_version

#### Add the site-packages directory.

#site.addsitedir(site_packages)


import logging
#logging.basicConfig(stream=sys.stderr)
sys.path.insert(0,"/app/")
#sys.path.append("/app/")

from app import app as application
from app import db
from posts.blueprint_postapp import posts
import view


application.register_blueprint(posts, url_prefix='/blog')
