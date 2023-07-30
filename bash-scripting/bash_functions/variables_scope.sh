#!/usr/bin/env bash

# Global variables are variables that can be accessed from anywhere in the script regardless of the scope. 
# In Bash, all variables by default are defined as global, even if declared inside the function.

# Local variables can be declared within the function body with the local keyword and can be used only inside that function. 
# You can have local variables with the same name in different functions.

var1="Sillians"
var2="Royalty"

variable_func () {
    var1="Ebuka"
    local var2="Kingly"
    echo "Inside Function : var1: $var1, var2: $var2"
}

echo "Before executing the function: var1: $var1, var2: $var2"

variable_func

echo "After executing the function: var1: $var1, var2: $var2"


# From the output above, we can conclude that:
# - When a local variable is set inside the function body with the same name as an existing global variable, it will have precedence over the global variable.
# - Global variables can be changed from within the function.

