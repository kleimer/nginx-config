#!/bin/bash
#sudo apt-get install nginx
mkdir ~/web
mkdir ~/web/etc
mkdir ~/etc
echo "def app(environ, start_response):
    data = environ['QUERY_STRING']
    m= [bytes(i+'\n') for i in data.split('&')]
    start_response('200 OK', [
        ('Content-Type', 'text/plain'),
        ('Content-Length', str(len(data)))
    ])
    return iter(m)" >~/web/hello.py
echo 'upstream backend {
        server 0.0.0.0:8080;} 
server {listen 80 default_server;listen [::]:80 default_server;
#	listen 127.0.0.1:8080;listen [::]:8080 default_server;
	index index.html index.htm index.nginx-debian.html;
	server_name _;
	location /hello/ {
		proxy_pass http://backend;}
#	location /{return 404;}}
}' >~/web/etc/nginx.cofig
echo "pythonpath = '/home/barak/web'
bind = '0.0.0.0:8080'
workers = 4" >~/etc/py_host.config

