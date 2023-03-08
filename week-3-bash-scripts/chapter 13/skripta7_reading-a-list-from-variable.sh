#!/bin/bash

#using a variable to hold the list

list="Portugal Espana Italia Australia"
list=$list" Brazil"  #common metod for adding text to the end of an existing string stored in a variable

for state in $list
do 
    echo "Have you ever visited $state?"
done 
