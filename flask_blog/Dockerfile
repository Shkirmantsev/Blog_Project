FROM ubuntu
EXPOSE 80

RUN mkdir /app &&\
mkdir /appdock

VOLUME /app
COPY appdock/requirements.txt /appdock
VOLUME /appdock


#RUN pip3 install -r /appdock/requirements.txt

RUN apt-get update

RUN apt-get install -y apt-utils curl &&\
apt-get install -y nano &&\
apt-get install -y apache2 &&\
apt-get install -y apache2-utils &&\
apt-get -y install python3 python3-dev libapache2-mod-wsgi-py3 &&\
ln /usr/bin/python3 /usr/bin/python &&\
apt-get -y install python3-pip &&\
ln /usr/bin/pip3 /usr/bin/pip &&\
pip install --upgrade pip &&\
a2enmod wsgi &&\
rm -rf /var/lib/apt/lists

RUN pip3 install --no-cache-dir -r /appdock/requirements.txt

WORKDIR /app
COPY app/ .

VOLUME /etc/apache2/sites-available/
COPY apache/conf/ /etc/apache2/sites-available/


RUN a2ensite flask_blog.conf &&\
a2enmod rewrite &&\
service apache2 restart &&\
a2dissite 000-default.conf &&\
service apache2 reload &&\
a2enmod lbmethod_byrequests &&\
service apache2 reload


ARG LC_ALL
RUN export lang=UTF_8
ARG LANG=C.UTF-8
ENV LANG=${LANG}
ENV LANG C.UTF-8

#RUN python ./manage.py db init
#RUN python ./manage.py db migrate
#RUN python ./manage.py db upgrade


#CMD [ "python", "./main.py" ]

#ENTRYPOINT ["python"]
CMD [ "apache2ctl", "-D", "FOREGROUND"]
