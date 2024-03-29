#!/bin/bash

echo -n "What is your name?: "
read PERSON
echo "Hello, $PERSON"

# By convention, Unix shell variables will have their names in UPPERCASE.
# The name of a variable can contain only letters (a to z or A to Z), numbers ( 0 to 9) or the underscore character ( _).

# Read Only Variables
NAME="Vijaya Aditya"
readonly NAME
# NAME="Kapil" # This will generate error
echo "Your name is $NAME"


# Unset a Variable # Delete a Variable
# unset NAME # Cannot unset readonly variables

unset PERSON
echo "$PERSON"

# TYPES OF VARIBLES
#     1. Local Variables
#         * Present within the current instance of shell
#         * Not available to child programs.
#     2. Environment Variables
#         * Available to any child process of the shell.
#     3. Shell Variables
#         * Special variable that is set by the shell.
#         * Required by the shell in order to function correctly.
#         * Some of them are Environment, others are Local.