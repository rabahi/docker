#!/bin/bash

# script path
SOURCE="${BASH_SOURCE[0]}"
SCRIPTPATH=`dirname $SOURCE`

# create env
mkdir -p /opt/volumes/httpd/{conf.d,htdocs}

chown 48:48 /opt/volumes/httpd/ -R
chmod 755 /opt/volumes/httpd/ -R

# deploy
docker stack deploy -c $SCRIPTPATH/docker-compose.yml stack-httpd
