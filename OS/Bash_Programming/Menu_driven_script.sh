#!/bin/bash

ch=0

until [ $ch -eq 6 ]
do
	echo "1: find the length of the string"
	echo "2: copy string"
	echo "3: Concatenation of strings"
	echo "4: Compare two string"
	echo "5: Reverse the string"
	echo "6: Exit"
	
	echo "Enter your choice"
	read ch
	
	case $ch in
	1)
		echo "Enter the string"
		read str
		
		echo -n "Length of string $str is : "
		echo ${#str};;
	2)
		echo "Enter the string"
		read str
		
		str2="${str}"
		echo "New string : $str2";;
	3)
		echo "Enter the first string"
		read str1
		
		echo "Enter the second string"
		read str2
		
		str1="${str1}${str2}"
		echo $str1;;
		
	4)
		echo "Enter the first string"
		read str1
		
		echo "Enter the second string"
		read str2
		
		if [ $str1 = $str2 ]
		then
			echo "Both the strings are same"
		elif [ $str1 \< $str2 ]
		then
			echo "$str1 is less than $str2"
		else
			echo "$str2 is less than $str1"
		fi;;			
		
	5)
		echo "Enter the string"
		read str
		sum=0
		len=${#str}
		for (( i=$len-1; $i>=0; i=$i-1 ))
		do
			reverse="$reverse${str:$i:1}"	
		done
		
		echo $reverse;;	
						
		
	6)
		echo "Thank you for using strings";;
	*)
		echo "Invalid Selection, please select a correct choice!! ";;
		esac
done
