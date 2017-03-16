#!/bin/bash
gunicorn -c /etc/gunicorn.d/hello.py hello:app

