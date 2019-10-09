#!/bin/bash

echo "Enter the number from 1 to 7"
read day

echo "DAY starting from SUNDAY"

if [ $day -eq 1 ]
then
	echo "SUNDAY"
elif [ $day -eq 2 ]
then 
	echo "MONDAY"
elif [ $day -eq 3 ]
then 
	echo "TUESDAY"
elif [ $day -eq 4 ]
then 
	echo "WEDNESDAY"
elif [ $day -eq 5 ]
then 
	echo "THURSDAY"
elif [ $day -eq 6 ]
then 
	echo "FRIDAY"
elif [ $day -eq 7 ]
then 
	echo "SATURDAY"
else
	echo "ENter a valid number"
fi

echo "DAY starting from MONDAY"
case $day in
	1)
		echo "MONDAY";;
	2)
		echo "TUESDAY";;
	3)
		echo "WEDNESDAY";;
	4)
		echo "THURSDAY";;
	5)
		echo "FRIDAY";;
	6)
		echo "SATURDAY";;
	7)
		echo "SUNDAY";;
	*)
		echo "ENter a valid number";;
esac

