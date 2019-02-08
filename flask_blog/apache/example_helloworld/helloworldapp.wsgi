#!/usr/bin/python3
python_home = '/mnt/data/PROJECTS/Blog/flask_blog/venv_flask'
import sys
import site
# Calculate path to site-packages directory.

python_version = '.'.join(map(str, sys.version_info[:2]))
site_packages = python_home + '/lib/python%s/site-packages' % python_version
# Add the site-packages directory.

site.addsitedir(site_packages)


#activate_this ='/mnt/data/PROJECTS/Blog/flask_blog/venv_flask/bin/activate_this.py'
#with open(activate_this) as file_:
    #exec(file_.read(), dict(__file__=activate_this))


import logging
#logging.basicConfig(stream=sys.stderr)
sys.path.insert(0,"/var/www/FLASKAPPS/")

from helloworldapp import app as application
#application.secret_key = 'flask_blog’