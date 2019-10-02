#!/bin/bash

val=`expr 2 + 2` # Need spaces between operators & Expressions
echo $val

############################ ARITHEMETIC OPERATORS ###############################
a=10
b=20

echo `expr $a + $b` # will give 30
echo `expr $a - $b` # will give -10
echo `expr $a \* $b` # will give 200
echo `expr $b / $a` # will give 2
echo `expr $b % $a` # will give 0
a = $b # would assign value of b into a
echo $a

if [ $a == $b ]
then
   echo "a is equal to b"
fi

if [ $a != $b ]
then
   echo "a is not equal to b"
fi


############################# RELATIONAL OPERATORS ############################
# Specific to numeric values. Do not work for string values unless their value is numeric.
a=10
b=20

# EQUAL TO
if [ $a -eq $b ] 
then
   echo "$a -eq $b : a is equal to b"
else
   echo "$a -eq $b: a is not equal to b"
fi

# NOT EQUAL TO
if [ $a -ne $b ]
then
   echo "$a -ne $b: a is not equal to b"
else
   echo "$a -ne $b : a is equal to b"
fi

# GREATER THAN OR EQUAL TO
if [ $a -gt $b ]
then
   echo "$a -gt $b: a is greater than b"
else
   echo "$a -gt $b: a is not greater than b"
fi

# LESS THAN OR EQUAL TO
if [ $a -lt $b ]
then
   echo "$a -lt $b: a is less than b"
else
   echo "$a -lt $b: a is not less than b"
fi

# GREATER THAN OR EQUAL TO
if [ $a -ge $b ]
then
   echo "$a -ge $b: a is greater or  equal to b"
else
   echo "$a -ge $b: a is not greater or equal to b"
fi

# LESS THAN OR EQUAL TO
if [ $a -le $b ]
then
   echo "$a -le $b: a is less or  equal to b"
else
   echo "$a -le $b: a is not less or equal to b"
fi


############################# BOOLEAN OPERATORS ############################
: '
    !   - Logical Negation
    -o  - OR
    -a  - AND
'

a=10
b=20

# NOT 
if [ $a != $b ]
then
   echo "$a != $b : a is not equal to b"
else
   echo "$a != $b: a is equal to b"
fi

# AND
if [ $a -lt 100 -a $b -gt 15 ]
then
   echo "$a -lt 100 -a $b -gt 15 : returns true"
else
   echo "$a -lt 100 -a $b -gt 15 : returns false"
fi

# OR
if [ $a -lt 100 -o $b -gt 100 ]
then
   echo "$a -lt 100 -o $b -gt 100 : returns true"
else
   echo "$a -lt 100 -o $b -gt 100 : returns false"
fi

############################# STRING OPERATORS ############################
: '
    =   String Comparison
    !=  String Comparison
    -z  Checks if the given string operand size is zero. Returns true for zero.
    -n  Checks if str is not empty string. If empty, it returns false.
'

a="abc"
b="efg"

# CHECK IF TWO STRINGS ARE EQUAL
if [ $a = $b ]
then
   echo "$a = $b : a is equal to b"
else
   echo "$a = $b: a is not equal to b"
fi

# CHECK IF TWO STINGS ARE NOT EQUAL
if [ $a != $b ]
then
   echo "$a != $b : a is not equal to b"
else
   echo "$a != $b: a is equal to b"
fi

# CHECK IF A STRING LENGTH IS ZERO
if [ -z $a ]
then
   echo "-z $a : string length is zero"
else
   echo "-z $a : string length is not zero"
fi

# CHECK IF A STRING LENGTH IS NOT ZERO
if [ -n $a ]
then
   echo "-n $a : string length is not zero"
else
   echo "-n $a : string length is zero"
fi

# CHECK IF NOT EMPTY
if [ $a ]
then
   echo "$a : string is not empty"
else
   echo "$a : string is empty"
fi


############################# FILE TEST OPERATORS ############################
