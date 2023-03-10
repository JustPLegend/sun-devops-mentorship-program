#!/bin/bash
# Testing parameters
#
if [ $# -ne 2 ]
then
    echo
    echo Usage: skripta11_testingParameters.sh
    echo
else
    total=$[ $1 + $2 ]
    echo
    echo The total is $total
    echo
fi

#The if-then statement uses the -ne evaluation to perform a numeric test of the command
#line parameters supplied. 