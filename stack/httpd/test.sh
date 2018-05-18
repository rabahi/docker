#!/bin/bash

# script path
SOURCE="${BASH_SOURCE[0]}"
SCRIPTPATH=`dirname $SOURCE`

# load check_functions.
. $SCRIPTPATH/../../check_functions/check_functions.bash

# check tcp port:
check_tcp 80 #http
check_tcp 443 #https
