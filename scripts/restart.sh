#!/bin/bash
set -e
cd /home/isucon/isubata
git pull
sudo cp etc/nginx.conf /etc/nginx/nginx.conf
sudo /usr/sbin/nginx -t
sudo service nginx reload
sudo service isubata.golang restart
