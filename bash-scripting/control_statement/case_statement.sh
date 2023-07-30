#!/usr/bin/env bash

# A case statement is used for testing multiple condition in contrast from if else statement as it is
# more concise and readable. 

# - A case statement starts with the case keyword followed by the expression and the in keyword
# - Case statement ends with the esac keyword
# - Multiple patterns can be used by using |
# - A pattern case and its body are termed as a clause
# - Pattern case body must be followed by ;;
# - If an expression matches two pattern cases, the body of the first match is executed


# """
# This is a bash script that receives
# an argument of a person gender,
# and checks if the gender is a male
# or female person by comparing
# the input with various possible
# ways of declaring a gender
# """
case $1 in
    F | f)
        echo "This is a female person"
        ;;
    M | m)
        echo "This is a Male person"
        ;;
    female | Female | FEMALE)
        echo "This is also a female person"
        ;;
    male | Male | MALE)
        echo "This is also a male person"
        ;;
*)
        echo "Unknown gender"
        ;;
esac


name="Sillians"

case $name in 
    Obinna | Chuks)
        echo "Sillians does not belong here"
        ;;
    Sillians | Sill)
        echo "Sillians here"
        ;;
esac