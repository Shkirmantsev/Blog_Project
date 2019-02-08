#!/usr/bin/python3
# -*- coding: utf-8 -*-

from flask import Flask

app=Flask(__name__)

@app.route('/')
def index():
	return "Hello simple World"

if __name__=='__main__':
	app.run()
	

