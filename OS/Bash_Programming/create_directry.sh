#!/bin/bash

echo "Enter the name of the directory"
read dir
count=0

for(( i=1; $i<=10; i=$i+1 ))
do
	if [ -d "${dir}${i}" -o -f "${dir}${i}" ]
	then
		echo "${dir}${i} directory or file already exists"
	else
		`mkdir "${dir}${i}"`
		count=$(( $count+1 ))
	fi	
done

if [ ! $count -eq 0 ]
then
	echo "$count directory(s) created"
else
	echo "No directory created"
fi

