#!/bin/sh

./restart.sh
sudo service nginx restart
uwsgi --ini mxonline_uwsgi.ini &