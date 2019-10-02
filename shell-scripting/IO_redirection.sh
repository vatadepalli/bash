#!/bin/bash

###################### OUTPUT REDIRECTION ######################
# The output from a command normally intended for standard output can be easily diverted to a file instead.

who > users

# OVER WRITES
echo "Ducks" > users
echo Ducks > users

# APPENDS
echo "Snakes" >> users


###################### INPUT REDIRECTION ######################
# Count the number of lines in the file users generated above

wc -l users # name of the file users is listed with the line count
# In the first case, wc knows that it is reading its input from the file users.

wc -l < users
# In the second case, it only knows that it is reading its input from standard input so it does not display file name.

###################### HERE REDIRECTION ######################
# A here document is used to redirect input into an interactive shell script or program.

# https://www.tutorialspoint.com/unix/unix-io-redirections.htm

###################### DISCARDING OUTPUT ######################
# ls
ls > /dev/null


##### DISCARD O/P and ERROR
#   2 represents STDERR
#   1 represents STDOUT
#   0 represents STDIN


# ls super
ls super > /dev/null 2>&1

#################### REDIRECTION COMMANDS #####################
#      pgm > file      # output of pgm is redirected to file
#      pgm < file      # pgm reads its input from filr
#      pgm >> file     # output of pgm is appended to file
#      n > file        # output from stream with descriptor n redirector to file
#      n >> file       # Output from stream with descriptor n appended to file
#      n >& m          # Merges output from stream n with stream m
#      n <& m          # Merges input from stream n with stream m
#      << tag          # Standard input comes from here through next tag at the start of line
#      |               # Takes output from one program, or process, and sends it to another

