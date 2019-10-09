#!/bin/bash

# 1.Write a script to perform the following
# a) To count no.of processes which are running or ready in the system (Hint:- ps -e -o pid,ppid,cmd,stat, grep )
# b) List out foreground processes running in the system (ps suffix + in the state for the foreground processes)
# c) List out all processes whose parent is init
# Total number of processes

ps -eo pid,ppid,cmd,stat | wc -l

# Total number of Running Processes

ps -eo stat | grep R | wc -l

# List foreground processes running

ps -eo pid,ppid,cmd,stat | grep +

# List processes whose parent is init

ps -f --ppid 1


# 2.Write a menu based script to perform following string operations a) To find length of a string
# c) Copying string
# d) Concatenation of strings
# e) Comparison of two strings f) Reversing a string
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


# 3.Write a script to check whether given argument is a regular file or directory 
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

	

# 4.To check given year is leap or not
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


# 5.Write a script to create 10 directories, say exam1,exam2,...,exam10 Report error if a directory/file exists with same name.
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




# 6.Write a script to check each entry of a directory is a file or directory.
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