#!/bin/bash

#Ignore spaces and tabs in data values 
#reading values from a file

file="states"

IFS=$'\n'

for state in $(cat $file)
do 
    echo "Visit beautiful $state"
done
