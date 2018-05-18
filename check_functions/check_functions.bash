#!/bin/bash

echo
echo "##############################################"
echo "############## TEST INSTALLATION #############"
echo "##############################################"
echo

##################################################
#      PRIVATE FUNCTIONS 
##################################################

echo -n "include init.d functions"
. /etc/rc.d/init.d/functions
echo_success
echo

# private function
# usage check title command
# example check "checking ls" ls
function check
{
  local title=$1
  local command=$2
  
  echo -n "$title"
  eval "$command > /dev/null 2>&1"
  RETVAL=$?
  if [ $RETVAL -eq 0 ]
  then echo_success
  else echo_failure
  fi
  echo
}

##################################################
#      CHECK FUNCTIONS
##################################################

# Check if tcp port is open
# usage: check_tcp myPort
# example check_tcp 80
function check_tcp()
{
  local port=$1
  title="Checking tcp port $port"
  command="nc -z localhost $port"
  check "$title" "$command"
}
