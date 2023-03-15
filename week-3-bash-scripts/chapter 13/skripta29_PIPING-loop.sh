#!/bin/bash

#piping a loop to another command

for state in "Portugal" Espana Italia 
do 
    echo "$state is the next place to go"
done | sort     
echo "This completes our travels"
