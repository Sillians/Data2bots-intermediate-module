### Bash Functions

- Syntax
1. The first format starts with the function name, followed by parentheses. This is the preferred and more used format.
```
function_name () {
  commands
}
```

- Single line syntax version
```
function_name () { commands; }
```

2. The second format starts with the reserved word function, followed by the function name.
```
function function_name {
  commands
}
```

- Single line version
```
function function_name { commands; }
```

### Few points to be noted:
- The commands between the curly braces ({}) are called the body of the function. The curly braces must be separated from the body by spaces or newlines.
- Defining a function doesn’t execute it. To invoke a bash function, simply use the function name. Commands between the curly braces are executed whenever the function is called in the shell script.
- The function definition must be placed before any calls to the function.
- When using single line “compacted” functions, a semicolon ; must follow the last command in the function.
- Always try to keep your function names descriptive.

