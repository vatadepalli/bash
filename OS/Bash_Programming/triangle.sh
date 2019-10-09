#!/bin/bash

echo "Enter the sides of triangle"
read a
read b
read c

if [ $(($a+$b)) -gt $c -a $(($c+$b)) -gt $a -a $(($a+$c)) -gt $b ]
then
	if [ $a -eq $b -a $a -eq $c ]
		then
		echo "The triangle is EQUILATERAL triangle"
	elif [ $a -eq $b -o $a -eq $c -o $b -eq $c ]
	then
		echo "The triangle is ISOSCELES trianlge"
	else
		echo "The triangle is SCALENE triangle"
	fi
else
	echo "Invalid triangle"
fi


