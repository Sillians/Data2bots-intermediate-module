#!/usr/bin/env bash

# Checks if the number is greater than 100 or not
if [ $1 -gt 100 ]
then
    echo "A large number was entered"
else
    echo "A lower number was entered"
fi

# Checks if the input is a file, directory or otherwise
if [ -f $1 ]
then
    echo "This is a file"
elif [ -d $1 ]
then
    echo "This is a directory"
else 
    echo "Not a file or directory"
fi