#!/usr/bin/env bash


hello_world () {
   echo 'hello, Sillians world'
}

hello_world

# Calculate the sum of two integers with pre initialize values
# in a shell script
calculate_sum () {
    sum=$(( $1 + $2 ))
    echo $sum
}

calculate_sum 4 5

# Calculate Sum with Command Line Arguments
# Calculate the sum via command-line arguments
# $1 and $2 refers to the first and second argument passed as command-line arguments
sum=$(( $1 + $2 ))
echo "Sum is $sum"


# Calculate multiplication with Run Time Input
# Take input from user and calculate multiplication.
# Here is another example of a shell script, which takes input from the user at run time. 
# Then calculate the multiplication of given numbers and store to a variable and show the results.

read -p "Enter first number: " num1
read -p "Enter second number: " num2

mult=$(( $num1 * $num2 ))
echo "Ans is $mult"