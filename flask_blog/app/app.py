
from flask import Flask
from config import Configuration
from flask_sqlalchemy import  SQLAlchemy

from flask_migrate import Migrate, MigrateCommand #need to migrate base
from flask_script import Manager #need to migrate base

from flask_admin import Admin # admin panel in :5000/admin
from flask_admin.contrib.sqla import ModelView # will make links "Tag" and "Post" in admin panel
from flask_admin import AdminIndexView # View for admin-panel. The firsts labels before models

from flask_security import SQLAlchemyUserDatastore
from flask_security import Security
from flask_security import current_user # in tamplate this method is by default, but in program we need to import it

from flask import redirect,url_for, request

app=Flask(__name__)
app.config.from_object(Configuration)
db=SQLAlchemy(app) # Make class database SQLAlchemy for our app

migrate=Migrate(app, db)
manager=Manager(app)
manager.add_command('db', MigrateCommand)

##:5000/admin###
from models import * # also for Flask-security "user_datastore", under


class AdminView(ModelView):
    def is_accessible(self):                  # method "is_accessible" from "ModelView" will be overrided. It is working automatically for each view
        return current_user.has_role('admin') # "restrict access to third part people to our admin-menu

    # if not accessible then automatically this method:
    def inaccessible_callback(self, name, **kwargs):
        #localhost/admin is "next"
        return redirect(url_for('security.login', next=request.url)) # 'security.login' is the name of blueprint of flask-security. next is url, where user was going before login

class InitialPanAdminView(AdminIndexView):
    def is_accessible(self):                  # method "is_accessible" from "ModelView" will be overrided. It is working automatically for each view
        return current_user.has_role('admin') # "restrict access to third part people to our admin-menu

    # if not accessible then automatically this method:
    def inaccessible_callback(self, name, **kwargs):
        return redirect(url_for('security.login', next=request.url)) # 'security.login' is the name of blueprint of flask-security. next is url, where user was going before login


admin=Admin(app, "Back_to_Blog",url='/', index_view=InitialPanAdminView(name='HomeBookmark'))
admin.add_view(AdminView(Post, db.session))
admin.add_view(AdminView(Tag, db.session))


###Flask-security

user_datastore=SQLAlchemyUserDatastore(db, User, Role)
security=Security(app, user_datastore)

