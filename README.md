# Simple flask/Django Blog v0.3 (only the flask version is currently available.)
by Dmitry Shkirmantsev version (2019)

#To start site in one click.
- in a choosing directory to execute the command:
git clone https://github.com/Shkirmantsev/Blog.git

in the directory ".../Blog/flask_blog/" to execute the commands:
user# docker-compose build
user# docker-compose up

# To Enter to site
 port for site is "name of your host":80,   or simly "name of your host"
 port for adminer is "name of your host":8080

 in order to access adminer:
  - MySql databasehost: db,
  - user: root
  - password: Irbhvfywtd@root0000 

# In order to access the adminpanel and edit function:
 - login: shkirmantsev@gmail.com
 - password: admin

# in process of developing:
the next steps are: 
- to connect production server
- writing Django version
- adding menu "create a tag" and "to tie tag" to navigation panel (now you can do it in the menu "Adminpanel")


# if during the installation process you have problems accessing the database,
#you should make the next steps:
-to clean folder databases;
- to execute again "docker-compose build"
- to create in adminer database 'test1'
- to import database 'test1' from folder 'dbs_import'. Exit.
-to execute  "docker-compose up"



