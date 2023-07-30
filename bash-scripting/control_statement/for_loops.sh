#!/usr/bin/env bash

# A for loop takes an iterable, and loop through every item in it, and execute the given commands.

for my_var in $(ls $1)
do 
    echo $my_var
done