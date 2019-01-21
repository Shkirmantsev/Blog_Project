
from flask import Blueprint
from flask import  render_template
from models import Post, Tag

posts=Blueprint('blogbprint', __name__, template_folder='templates')
@posts.route('/')
def index():
    listofposts=Post.query.all()
    return render_template('posts/index.html', listofposts=listofposts)

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
    posts=tag.posts.all() # because baseQuery oblect (lazy='dynamic')
    return render_template('posts/tag_detail.html', tag=tag, posts=posts)
    #post = Post.query.filter(Post.slug == 'Third-post--3-test').first()
    #tags = post.tags
    #return render_template('posts/post_detail.html', post=post, tags=tags[0])