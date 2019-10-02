#!/bin/bash

#################### INFINITE LOOP ####################

a=10

until [ $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done


#################### BREAK ####################
: '
    break 
    # Come out of the loop
'
a=0

while [ $a -lt 10 ]
do
   echo $a
   if [ $a -eq 5 ]
   then
      break
   fi
   a=`expr $a + 1`
done


: '
    break n # Break out of a nested loop
    # n specifies the nth enclosing loop to the exit from.
'

for var1 in 1 2 3
do
   for var2 in 0 5
   do
      if [ $var1 -eq 2 -a $var2 -eq 0 ]
      then
         break 2
      else
         echo "$var1 $var2"
      fi
   done
done


#################### CONTINUE ####################

NUMS="1 2 3 4 5 6 7"

for NUM in $NUMS
do
   Q=`expr $NUM % 2`
   if [ $Q -eq 0 ]
   then
      echo "Number is an even number!!"
      continue
   fi
   echo "Found odd number"
done
