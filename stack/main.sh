#!/bin/bash

# script path
SOURCE="${BASH_SOURCE[0]}"
SCRIPTPATH=`dirname $SOURCE`

# main
for D in `find . ! -path . -type d`;
do
    echo "###################### $D"
    echo "start"
    sleep 5
    bash $SCRIPTPATH/$D/start.sh
    
    echo "test"
    sleep 5
    bash $SCRIPTPATH/$D/test.sh
    
    echo "stop"    
    sleep 5
    bash $SCRIPTPATH/$D/stop.sh
    
    echo .
done