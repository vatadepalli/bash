#!/bin/bash

# The shell performs substitution when it encounters an expression that contains one or more special characters.

########################## ESCAPE SEQUENCES #################################

# Example 
# \n - newline
a=10
echo -e "Value of a is $a \n"


: '
    \\      backslash
    \a      alert (BEL)
    \b      backspace
    \c      supress trailing new line
    \f      form feed
    \n      new line
    \r      carriage return
    \t      horizontal tab
    \v      vertical tab
'

: '
    -E      disable the interpretation of the backslash escapes (default)
    -n      disable insertion of newline
'

########################## COMMAND SUBSTITUTION #################################
#       Mechanism by which the shell performs a given set of commands
#       and then substitutes their output in the place of the commands.

DATE=`date`
echo "Date is $DATE"

USERS=`who | wc -l`
echo "Logged in user are $USERS"

UP=`date ; uptime`
echo "Uptime is $UP"

########################## VARIABLE SUBSTITUTION #################################
: '
    ${var}          
        Substitute the value of var

    ${var:-word}    
        If var is null or unset, word is substituted for var. The value of var does not change

    ${var:=word}
        If var is null or unset, var is set to the value of word.

    ${var:?message}
        If var is null or unset, message is printed to standard error. This checks that variables are set correctly.

    ${var:+word}
        If var is set, word is substituted for var. The value of var does not change.
'

echo ${var:-"Variable is not set"}
echo "1 - Value of var is ${var}"

echo ${var:="Variable is not set"}
echo "2 - Value of var is ${var}"

unset var
echo ${var:+"This is default value"}
echo "3 - Value of var is $var"

var="Prefix"
echo ${var:+"This is default value"}
echo "4 - Value of var is $var"

# unset var
echo ${var:?"Print this message"}
echo "5 - Value of var is ${var}"