#!/usr/bin/env bash

# Bash uses a `case` statement that works similarly to switch in Java and C++:
case "$Variable" in
    # List patterns for the conditions you want to meet
    0) echo "There is a zero.";;
    1) echo "There is a one.";;
    *) echo "It is not null.";;  # match everything
esac

# `for` loops iterate for as many arguments given:
# The contents of $Variable is printed three times.
for Variable in {1..3}
do
    echo "$Variable"
done
# => 1
# => 2
# => 3

# Or write it the "traditional for loop" way:
for ((a=1; a<=3; a++))
do 
    echo $a
done

# They can also be used to act on files..
# This will run the command `cat` on file1 and file2
for Variable in file1 file2
do
    cat "$Variable"
done

# ..or the output from a command
# This will `cat` the output from `ls`.
for Output in $(ls)
do
    cat "$Output"
done

# Bash can also accept patterns, like this to `cat`
# all the Markdown files in current directory
for Output in ./*.markdown
do
    cat "$Output"
done

# while loop:
while [ true ]
do
    echo "loop body here..."
    break
done
# => loop body here...

# You can also define functions
# Definition:
function foo ()
{
    echo "Arguments work just like script arguments: $@"
    echo "And: $1 $2..."
    echo "This is a function"
    returnValue=1    # Variable values can be returned
    return $returnValue
}
# Call the function `foo` with two arguments, arg1 and arg2:
foo arg1 arg2
# => Arguments work just like script arguments: arg1 arg2
# => And: arg1 arg2...
# => This is a function
# Return values can be obtained with $?
resultValue=$?
# More than 9 arguments are also possible by using braces, e.g. ${10}, ${11}, ...

# or simply
bar ()
{
    echo "Another way to declare functions!"
    echo "Here's the arguments: $1 $2 $3..."
    return 0
}
# Call the function `bar` with no arguments:
bar Sillians Basil Greatness # => Another way to declare functions!

# Calling your function
foo "My name is" $Name

# There are a lot of useful commands you should learn:
# prints last 10 lines of file.txt
tail -n 10 file.txt

# prints first 10 lines of file.txt
head -n 10 file.txt

# print file.txt's lines in sorted order
sort file.txt

# report or omit repeated lines, with -d it reports them
uniq -d file.txt

# prints only the first column before the ',' character
cut -d ',' -f 1 file.txt

# replaces every occurrence of 'okay' with 'great' in file.txt
# (regex compatible)
sed -i 's/okay/great/g' file.txt
# be aware that this -i flag means that file.txt will be changed
# -i or --in-place erase the input file (use --in-place=.backup to keep a back-up)

# print to stdout all lines of file.txt which match some regex
# The example prints lines which begin with "foo" and end in "bar"
grep "^foo.*bar$" file.txt

# pass the option "-c" to instead print the number of lines matching the regex
grep -c "^foo.*bar$" file.txt

# Other useful options are:
grep -r "^foo.*bar$" someDir/ # recursively `grep`
grep -n "^foo.*bar$" file.txt # give line numbers
grep -rI "^foo.*bar$" someDir/ # recursively `grep`, but ignore binary files

# perform the same initial search, but filter out the lines containing "baz"
grep "^foo.*bar$" file.txt | grep -v "baz"

# if you literally want to search for the string,
# and not the regex, use `fgrep` (or `grep -F`)
fgrep "foobar" file.txt

# The `trap` command allows you to execute a command whenever your script
# receives a signal. Here, `trap` will execute `rm` if it receives any of the
# three listed signals.
trap "rm $TEMP_FILE; exit" SIGHUP SIGINT SIGTERM

# `sudo` is used to perform commands as the superuser
# usually it will ask interactively the password of superuser
NAME1=$(whoami)
NAME2=$(sudo whoami)
echo "Was $NAME1, then became more powerful $NAME2"

# Read Bash shell built-ins documentation with the bash `help` built-in:
help
help help
help for
help return
help source
help .

# Read Bash shell built-ins documentation with the bash `help` built-in:
help
help help
help for
help return
help source
help .

# Read info documentation with `info` (`?` for help)
apropos info | grep '^info.*('
man info
info info
info 5 info

# Read Bash manpage documentation with `man`
apropos bash
man 1 bash
man bash

# Read bash info documentation:
info bash
info bash 'Bash Features'
info bash 6
info --apropos bash

