
from app import db
from datetime import datetime
import re

def slugify(s):
    pattern=r'[^\w+]'
    return re.sub(pattern, '-',s)

post_tags=db.Table('post_tags',
                   db.Column('post_id',db.Integer, db.ForeignKey('post.id')),
                   db.Column('tag_id',db.Integer, db.ForeignKey('tag.id'))
                   )



class Post(db.Model):
    id=db.Column(db.Integer, primary_key=True)
    title=db.Column(db.String(140))
    slug = db.Column(db.String(140), unique=True)
    body=db.Column(db.Text)
    created=db.Column(db.DateTime, default=datetime.now())
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
        return '<Tag id {}, tag\'s name: {}>'.format(self.id, self.tagname)

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
