#!/bin/bash

# read -p "Enter the figure to compute the percentage for " num1
# read -p "Enter the percentage " num2

# returnValue=$((num1*num2/100))
# echo $returnValue

# Extract arguments
figure=$1
percentage=$2

# Compute the result
result=$(echo "$figure * $percentage / 100" | bc -l)

# Print the result
echo "The result of $percentage% of $figure is: $result"

exit 0
