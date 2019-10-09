#!/bin/bash

echo "Enter the numbers"
read a
read b
read c

if [ $a -gt $b ]
then
	if [ $a -gt $c ]
	then
		echo "The biggest number among $a $b $c is $a"
	else
		echo "The biggest number among $a $b $c is $c"
	fi
elif [ $b -gt $c ]
then
	echo "The biggest number among $a $b $c is $b"
else
	echo "The biggest number among $a $b $c is $c"
fi


avg=`echo "scale=2; ($a+$b+$c)/3" | bc`
echo "The average of $a $b $c is $avg"
	

