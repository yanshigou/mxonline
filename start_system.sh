#!/bin/sh

./restart.sh
sudo service nginx restart
uwsgi --ini Lock_uwsgi.ini &