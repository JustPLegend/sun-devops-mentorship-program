#!/bin/bash

#You have two ways to solve this problem:
#■ Use the escape character (the backslash) to escape the single quotation mark.
#■ Use double quotation marks to defi ne the values that use single quotation marks.
#Neither solution is all that fantastic, but each one helps solve the problem

#another example of how not to use the for command

for test in I don\'t know if "this'll" work
do 
    echo "word:$test"
done