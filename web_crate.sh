#!/bin/bash
#sudo apt-get install nginx
mkdir ~/web
mkdir ~/web/public
mkdir ~/web/public/img
mkdir ~/web/public/css
mkdir ~/web/public/js
mkdir ~/web/uploads
mkdir ~/web/etc
echo 'server {listen 80 default_server;listen [::]:80 default_server;	index index.html index.htm index.nginx-debian.html;server_name _;location ^~/uploads/{root /home/box/web;}location ~*^.+\.\w+$ {root /home/box/web/public;}location /{return 404;}}' >~/web/etc/nginx.cofig

