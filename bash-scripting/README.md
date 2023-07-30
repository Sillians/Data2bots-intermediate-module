

Useful Link: https://stackoverflow.com/questions/20449543/shell-equality-operators-eq
= and == are for string comparisons
-eq is for numeric comparisons
-eq is in the same family as -lt, -le, -gt, -ge, and -ne

== is specific to bash (not present in sh (Bourne shell), ...). Using POSIX = is preferred for compatibility. In bash the two are equivalent, and in sh = is the only one that will work.


## Cat Command
Cat, which is short for concatenate, is one of the most commonly used commands in Linux and other Unix-like operating systems. The cat command allows us to create single or multiple files, view file inclusions, concatenate files and redirect output in a terminal or file.

## Execution Permission to a bash script file
- `chmod 755 <name-of-file.sh>`
- `chmod +x <name-of-file.sh>`