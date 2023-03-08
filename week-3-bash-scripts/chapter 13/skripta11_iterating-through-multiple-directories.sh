#!/bin/bash

#Combine the directory search method and the list method 
#in same statement by listing a series of directory wildcards in the for command

for file in testSkript/*
do 
    if [ -d "$file" ]
    then 
    echo "$file is a directory"
    elif [ -f "$file" ]
    then 
        echo "$file is a file"
    else 
        echo "$file doesn't exist"
        fi
done

#The for statement fi rst uses file globbing to iterate through the list of files that result from
#the wildcard character; then it iterates through the next file in the list. You can combine
#any number of wildcard entries in the list to iterate through