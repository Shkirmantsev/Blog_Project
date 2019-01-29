FROM python:3
#RUN apt-get update &&\
#apt-get upgread -y
EXPOSE 5000

RUN mkdir /app &&\
mkdir /appdock

VOLUME /app
COPY appdock/requirements.txt /appdock
VOLUME /appdock



RUN pip install --no-cache-dir -r /appdock/requirements.txt
#RUN pip install -r /appdock/requirements.txt

WORKDIR /app
COPY app/ .


#RUN python ./manage.py db init
#RUN python ./manage.py db migrate
#RUN python ./manage.py db upgrade
CMD [ "python", "./main.py" ]