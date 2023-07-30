#!/bin/bash

####################################################
############# write your solution below   ############# 
#######################################################

# Using the data (data.txt), write a script that prints the details of all male gender in the file.

# Check if the data.txt exists
if [[ ! -f "data.txt" ]]; then
    echo "data.txt not found!"
    exit 1
fi

# Use awk to print the details of all males
awk -F, '$3=="Male" { print $0 }' data.txt

