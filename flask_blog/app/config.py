class Configuration(object):
    DEBUG=True
    SQLALCHEMY_TRACK_MODIFICATIONS=False
    """
    mysql+mysqlconnector://root:Irbhvfywtd@root0000@localhost/test1
    mysql - type of base
    +mysqlconnector - driver for connection
    ://root: - name 'root'of db user
    Irbhvfywtd@root0000 - password for db
    @localhost/test1 - host
    """
    SQLALCHEMY_DATABASE_URI='mysql+mysqlconnector://root:Irbhvfywtd@root0000@localhost/test1' #