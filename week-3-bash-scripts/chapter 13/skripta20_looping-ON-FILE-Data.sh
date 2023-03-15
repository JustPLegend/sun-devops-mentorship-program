#!/bin/bash

#Often, you must iterate through items stored inside a file. This requires combining two of
#the techniques covered:
#■ Using nested loops
#■ Changing the IFS environment variable

#changing the IFS value

IFS.OLD =  $IFS 
IFS=$'\n'
for entry in $(cat /etc/passwd)
do 
    echo "Values in $entry -"
    IFS=:
    for value in $entry
    do 
        echo "$value"
    done
done
