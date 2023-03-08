#!/bin/bash

#The key to the while command is that the exit status of the test command specified
#must change, based on the commands run during the loop. If the exit status never changes,
#the while loop will get stuck in an infi nite loop.

var1=10
while [ $var1 -gt 0 ]
do 
    echo $var1
    var1=$((var1 - 1))
   #  var1=$[ $var1 - 1 ]
done