#!/bin/bash

####################### META CHARACTERS #########################

# Unix Shell provides various metacharacters which have special meaning while using them in any Shell Script and causes termination of a word unless quoted.

#       ? matches with a single character while listing files in a directory
#       * matches more than one character.
#       * ? [ ] ' " \ $ ; & ( ) | ^ < > new-line space tab


# ;
# echo Hello; Word # Throw Error
# Doesn't Throw Error
echo Hello\; World # Hello; Word

# $
echo "I have \$1200"


##################   SINGLE QUOTES ##################
##       All special characters between these quotes lose this special meaning
echo '<-$1500.**>; (update?) [y|n]'

##################   DOUBLE QUOTES
##       Most speical characters between these quotes lose their special meaning
##       Except these
##
##           $
##           `
##          \$
##           \'
##           \"
##           \\

VAR=ZARA
echo "$VAR owes <-$1500.**>; [ as of (`date +%m/%d`) ]"
echo "$VAR owes <-\$1500.**>; [ as of (`date +%m/%d`) ]" # PERFECT
echo '$VAR owes <-$1500.**>; [ as of (`date +%m/%d`) ]' # THIS GOES TO SHIT


##################   BACKSLASH ##################
##      Any character immediately following the backslash loses its special meaning.

#            $ for parameter substitution
#            Backquotes for command substitution
#            \$ to enable literal dollar signs
#            \` to enable literal backquotes
#            \" to enable embedded double quotes
#            \\ to enable embedded backslashes
#            All other \ characters are literal (not special)


##################  BACK QUOTE ##################
##      Anything in between back quotes would be treated as a command and would be executed.

DATE=`date`
echo "Current Date: $DATE"