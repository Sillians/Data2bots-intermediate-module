#!usr/bin/env bash

# Unlike functions in “real” programming languages, Bash functions don’t allow you to return a value when called. 
# When a bash function completes, its return value is the status of the last statement executed in the function, 
# 0 for success and non-zero decimal number in the 1 - 255 range for failure.

my_function () {
    echo "This is a function"
    return 55
}

my_function
echo $?

# The return status can be specified by using the return keyword, and it is assigned to the variable $?.
#  The return statement terminates the function. You can think of it as the function’s exit status .


# To actually return an arbitrary value from a function, we need to use other methods. 
# The simplest option is to assign the result of the function to a global variable:

my_function () {
  func_result="some result"
  echo $func_result
  name="Sillians"
}

my_function
echo $name



# Another, better option to return a value from a function is to send the value to stdout using echo or printf

new_function () {
    local some_func="here is another return value"
    echo $some_func
}

some_func="$(new_function)"
echo $some_func


