#!/bin/bash
# Grabbing the last parameter
#
params=$#
echo
echo The last parameter is $params
echo The last parameter is ${!#}
echo

#This script also assigned the $# variable value to the variable params and then
#used that variable within the special command line parameter variable format as well. Both
#versions worked.