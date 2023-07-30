#!/usr/bin/env bash
# First line of the script is the shebang which tells the system how to execute
# the script: https://en.wikipedia.org/wiki/Shebang_(Unix)
# As you already figured, comments start with #. Shebang is also a comment.

# Simple hello world example:
echo "Hello world!" # => Hello world!

# Each command starts on a new line, or after a semicolon:
echo "This is the first command"; echo "This is the second command"

# Declaring a variable looks like this:
variable="Some string"

# Using the variable:
echo "$variable" # => Some string
echo $variable # => Some string
echo '$variable' # => $variable

# Parameter expansion ${...}:
echo "${variable}" # => Some string

# String substitution in variables:
echo "${variable/Some/A}" # => A string
echo "${variable/string/bash scripting}" # => Some bash scripting

# Substring from a variable:
length=7
echo "${variable:0:length}" # => Some st
# This will return only the first 7 characters of the value
echo "${variable: -5}" # => tring
# This will return the last 5 characters (note the space before -5).
# The space before minus is mandatory here.

# String length:
echo "${#variable}" # => 11

# Indirect expansion:
other_variable="variable"
echo ${!other_variable} # => Some string
# This will expand the value of `other_variable`.

# The default value for variable:
echo "${foo:-"DefaultValueIfFooIsMissingOrEmpty"}"
# => DefaultValueIfFooIsMissingOrEmpty
# This works for null (foo=) and empty string (foo=""); zero (foo=0) returns 0.
# Note that it only returns default value and doesn't change variable value.

# Declare an array with 6 elements:
array=(one two three four five six)
# Print the first element:
echo "${array[0]}" # => "one"
# From the second element, print the first three elements
echo "${array[@]0:2:3}"
# Print all elements:
echo "${array[@]}" # => "one two three four five six"
# Print the number of elements:
echo "${#array[@]}"
# Print the number of characters in third element
echo "${#array[2]}" # => "5"
# Print the number of characters in the fifth element
echo "${#array[4]}"
# Print 2 elements starting from fourth:
echo "${array[@]:3:2}" # => "four five"
# Print all elements each of them on new line.
for item in "${array[@]}"; do
    echo "$item"
done

# Built-in variables:
# There are some useful built-in variables, like:
echo "Last program's return value: $?"
echo "Script's PID: $$"
echo "Number of arguments passed to script: $#"
echo "All arguments passed to script: $@"
echo "Script's arguments separated into different variables: $1 $2..."

# Brace Expansion {...}
# used to generate arbitrary strings:
echo {1..10} # => 1 2 3 4 5 6 7 8 9 10
echo {a..z} # => a b c d e f g h i j k l m n o p q r s t u v w x y z
# This will output the range from the start value to the end value.
# Note that you can't use variables here:
from=1
to=10
echo {$from..$to} # => {$from..$to}


# Now that we know how to echo and use variables,
# let's learn some of the other basics of Bash!

# Our current directory is available through the command `pwd`.
# `pwd` stands for "print working directory".
# We can also use the built-in variable `$PWD`.
# Observe that the following are equivalent:
echo "I'm in $(pwd)" # execs `pwd` and interpolates output
echo "I'm in $PWD" # interpolates the variable

# If you get too much output in your terminal, or from a script, the command
# `clear` clears your screen:
# Ctrl-L also works for clearing output.


# Reading a value from input:
echo "What's your name?"
read name
# Note that we didn't need to declare a new variable.
echo "Hello, $name!"

# We have the usual if structure.
# Condition is true if the value of $name is not equal to the current user's login username:
if [[ "$name" != "$USER" ]]; then
    echo "Your name isn't your username"
else
    echo "Your name is your username"
fi

# To use && and || with if statements, you need multiple pairs of square brackets:
echo "please enter you age"
read age
if [[ "$name" == "Steve" ]] && [[ "$age" -eq 15 ]]; then
    echo "This will run if $name is Steve AND $age is 15."
fi

if [[ "$name" == "Daniya" ]] || [[ "$name" == "Zach" ]]; then
    echo "This will run if $name is Daniya OR Zach."
fi
# There are other comparison operators for numbers listed below:
# -ne - not equal
# -lt - less than
# -gt - greater than
# -le - less than or equal to
# -ge - greater than or equal to

# There is also the `=~` operator, which tests a string against the Regex pattern:
email=me@example.com
if [[ "$email" =~ [a-z]+@[a-z]{2,}\.(com|net|org) ]]
then
    echo "Valid email!"
else 
    echo "Invalid email"
fi


# There is also conditional execution
echo "Always executed" || echo "Only executed if first command fails"
# => Always executed
echo "Always executed" && echo "Only executed if first command does NOT fail"
# => Always executed
# => Only executed if first command does NOT fail



