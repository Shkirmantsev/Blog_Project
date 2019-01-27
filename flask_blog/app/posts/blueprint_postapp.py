
from flask import Blueprint
from flask import  render_template

from models import Post, Tag
from .forms import PostForm

from flask import  request
from app import db

from flask import redirect
from flask import url_for

from flask_security import login_required #decorator for Access limitation

posts=Blueprint('blogbprint', __name__, template_folder='templates')


#http://localhost/blog/create
@posts.route('/create', methods=['POST', 'GET'])
@login_required
def create_post():
    if request.method=='POST':
        title=request.form['title']
        body=request.form['body']

        try:
            if title:
                post=Post(title=title, body=body)
                db.session.add(post)
                db.session.commit()
        except:
            print('Something wrong, Can\'t create post')
        return redirect(url_for(('blogbprint.index')))


    form=PostForm()
    return render_template('posts/create_post.html', form=form)

@posts.route('/<slug>/edit/', methods=['POST', 'GET'])
@login_required
def edit_post(slug):
    post=Post.query.filter(Post.slug==slug).first()
    if request.method=='POST':
        form=PostForm(formdata=request.form, obj=post) # in obj is checked if there are all fields =--> form.fields==obj.fields ('title' and 'body')
        post.title = request.form['title']
        post.body = request.form['body']
        form.populate_obj(post) #rewrite data in "post"s atributes from "form"
        db.session.commit()

        return redirect(url_for('blogbprint.post_detail',slug=post.slug))

    form=PostForm(obj=post)
    return render_template('posts/edit_post.html', post=post, form=form)




@posts.route('/')
def index():
    q=request.args.get('q')

    page=request.args.get('page')
    if page and page.isdigit():
        page=int(page)
    else:
        page=1


    if q:
        listofposts=Post.query.filter(Post.title.contains(q) | Post.body.contains(q))
    else:
        listofposts=Post.query.order_by(Post.created.desc())

    pagesblock = listofposts.paginate(page=page, per_page=7) #BaseQuery object with "items" property
    return render_template('posts/index.html', pagesblock=pagesblock)

# http://localhost/blog/first-post
@posts.route('/<slug>')
def post_detail(slug):
    post=Post.query.filter(Post.slug==slug).first()
    tags=post.tags
    return render_template('posts/post_detail.html', post=post,tags=tags)

# http://localhost/blog/tag/tagname
@posts.route('/tag/<slug>')
def tag_detail(slug):
    tag=Tag.query.filter(Tag.slug==slug).first()
    listofposts=tag.posts.all() # because baseQuery oblect (lazy='dynamic')
    return render_template('posts/tag_detail.html', tag=tag, listofposts=listofposts)
