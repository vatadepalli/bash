#!/bin/bash

echo "Enter the year"
read year



if [ $(($year%400)) -eq 0 ]
then
	echo "The year $year is leap year"
elif [ $(($year%100)) -eq 0 ]
then
	echo "The year $year is not a leap year"
elif [ $(($year%4)) -eq 0 ]
then
	echo "The year $year is a leap year"
fi



