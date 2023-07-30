#!/usr/bin/env bash

x=6
y=2
((x+y))

# Print all the colors in an array
array=(Green Yellow Red Black White Purple)
# Print all elements in the array:
echo "${array[@]}"

# Traffic light
# Reading a color of the traffic light:
# echo "what's the traffic light color? (green/yellow/red)"
# read color

# if [[ "$color" == "green" ]]; then
#     echo "GO"
# elif [[ "$color" == "yellow" ]]; then
#     echo "READY"
# elif [[ "$color" == "red" ]]; then
#     echo "READY"
# else
#     echo "Invalid Input"
# fi


num1=50
num2=30

# (value/total value)×100%.

returnValue=$((num1*num2/100))
echo $returnValue


