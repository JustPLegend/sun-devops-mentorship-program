#!/bin/bash
# demonstrating the shift command
#manipulating command line parameters
#shift command literally shifts the command line param. in their relative positions
echo
    count=1
    while [ -n "$1" ]
do
    echo "Parameter #$count = $1"
    count=$[ $count + 1 ]
    shift
done