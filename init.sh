#!/bin/bash
/etc/init.d/nginx stop
/etc/init.d/nginx star
ln -sf ~/web/etc/nginx.cofig /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart
mkdir /etc/gunicorn.d
ln -sf ~/etc/py_host.config /etc/gunicorn.d/hello.py
