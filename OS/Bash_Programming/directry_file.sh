#!/bin/bash

echo "Enter the argument"
read x

if [ -d "$x" ]
then
	echo "The entered argument is a directory"
elif [ -f "$x" ]
then
	echo "The entered argument is a file"
else
	echo "Inavlid argument!!"
fi

	
