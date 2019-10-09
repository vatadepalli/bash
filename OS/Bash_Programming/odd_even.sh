#!/bin/bash

echo "Enter a Num:"
read x
if [ $x -eq 0 ]
then
	echo "0 is neither even nor odd"
		
else
	if [ $(($x % 2)) -eq 0 ]; then
		echo "Number $x is EVEN"
	else
		echo "Number $x is ODD"
	fi
fi
