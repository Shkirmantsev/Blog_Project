
from app import db
from datetime import datetime
from sqlalchemy.sql.functions import current_timestamp

import re

from flask_security import UserMixin, RoleMixin

def slugify(s):
    pattern=r'[^\w+]'
    return re.sub(pattern, '-',str(s))

post_tags=db.Table('post_tags',
                   db.Column('post_id',db.Integer, db.ForeignKey('post.id')),
                   db.Column('tag_id',db.Integer, db.ForeignKey('tag.id'))
                   )



class Post(db.Model):
    id=db.Column(db.Integer, primary_key=True)
    title=db.Column(db.String(140))
    slug = db.Column(db.String(140), unique=True)
    body=db.Column(db.Text)
    created=db.Column(db.DateTime, default=current_timestamp())
    tags = db.relationship('Tag', secondary=post_tags, backref=db.backref('posts', lazy='dynamic'))
    #tags = db.relationship('Tag', secondary=post_tags, backref='posts')


    def __init__(self, *args, **kwargs):
        super(Post, self).__init__(*args, **kwargs)
        self.generate_slug()



    def generate_slug(self):
        if self.title:
            self.slug=slugify(self.title)

    def __repr__(self):
        return '<Post id: {}, title: {}>'.format(self.id, self.title)

class Tag(db.Model):
    id=db.Column(db.Integer, primary_key=True)
    tagname=db.Column(db.String(100))
    slug=db.Column(db.String(100))

    def __init__(self, *args, **kwargs):
        super(Tag, self).__init__(*args,**kwargs)
        self.slug=slugify(self.tagname)

    def __repr__(self):
        return '<Tag id {}, name: {}>'.format(self.id, self.tagname)

#### for flask security ###

# Table for relation many-to-many (Role-User):
roles_users=db.Table('roles_users',
                     db.Column('user_id', db.Integer(), db.ForeignKey('user.id')),
                     db.Column('role_id', db.Integer(), db.ForeignKey('role.id'))
                     )





class User(db.Model, UserMixin):
    id=db.Column(db.Integer(), primary_key=True)
    email=db.Column(db.String(100), unique=True)
    password=db.Column(db.String(255)) # encrypted password
    active=db.Column(db.Boolean())
    roles=db.relationship('Role', secondary=roles_users, backref=db.backref('users', lazy='dynamic'))

class Role(db.Model, UserMixin):
    id=db.Column(db.Integer(), primary_key=True)
    name=db.Column(db.String(100), unique=True)
    description=db.Column(db.String(255))

if __name__ == '__main__':
    from app import db
    try:
        db.create_all()
        p0 = Post(title='First post', body='First post body')
        db.session.add(p0)
        db.session.commit()
        p1 = Post(title='Second post', body='Second post body')
        db.session.add(p1)
        db.session.commit()
        p2 = Post(title='Third post! 3-test', body='First post body')
        db.session.add(p2)
        db.session.commit()
    except Exception as exn:
        db.session.rollback()
        print('catching exception: ',exn)
        #print("p0,p1, p2", p0, p1, p2)
        #print("p0,p1, p2", p0.slug, p1.slug, p2.slug)


    ##### from other file also
    ##### from models import posts
    ##### from app import db
    posts = Post.query.all()
    print(posts)
    seeckedpost = Post.query.filter(Post.title.contains('second')).all()
    print('seeckedpost is:', seeckedpost)
