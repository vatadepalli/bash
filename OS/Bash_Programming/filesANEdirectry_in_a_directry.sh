#!/bin/bash

echo "Enter the fullname of the directory"
read x

if [ ! -d $x ]
then
	echo "No such directory exists!!"
else
	for i in "$x"/*
	do
			if [ -d $i  ]
			then
				echo "$i is directory"
				echo
			else
				echo "$i is a file"
			fi
	done
fi
