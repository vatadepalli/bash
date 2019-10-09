#!/bin/bash

# Section A:
# 1.Create directory of your name and then create 4 files inside it named
# a.txt, b.txt, c.txt and d.sh. And change the directory permission to only user and also files permission to only user such that
# a)user can read and write the file a.txt and b.txt b)user can write the file c.txt
# c)user can exectuable the file d.sh. Make Contents of file d.sh:
# #/bin/sh
# ls -lh

mkdir two
cd two
touch a.txt b.txt c.txt d.sh
chmod 000 a.txt b.txt c.txt. d.sh
chmod u=rw a.txt b.txt 
chmod u=w c.txt 
chmod u=rwx d.sh 
echo -e '#/bin/sh\nls -lh' > d.sh 
ls -l

# 2.Change the permission of the previous directory to executable only.
# Analyze the output.

chmod 000 two
chmod u=x two
ls -l

# 3.Change the permission of the previous directory to read only.
# Analyze the output.
chmod u=r two
ls -l

# 4.Use echo to list the all files of your home directory.
echo `ls /home/dac`

search_dir="/"
for entry in "$search_dir"/*
do
  echo "$entry"
done

# 5.Use echo to list the all files of /etc/ directory
echo `ls /etc`


# 6.Use echo to list the all files of /etc/ directory with extension name .conf 
echo `ls /etc/*.conf`


# 7.Use echo to append your name to a.txt
cd two/
echo '10may' >> a.txt

# 8.Use echo to list the files of /proc/
echo `ls /etc`


########################################################################################################
# Section B:
# 1.Write a program to find sum and product of two no.s using a) expr 
mkdir two_b
cd two_b

touch expr.sh

echo 'Enter first number'
read a
echo 'Enter second number'
read b
echo "You have entered $a and $b"
sum=`expr $a + $b`
echo "$a + $b = $sum"

# b) let 
touch let.sh

echo 'Enter first number'
read a
echo 'Enter second number'
read b
let "myvar2=a+b"; echo $myvar2


# c) bc 
touch bc.sh

echo 'Enter first number'
read a
echo 'Enter second number'
read b
echo "$a + $b" | bc


# 2.Write a program to perform floating point division
touch float.sh

echo 'Enter first number'
read a
echo 'Enter second number'
read b
div=`echo "scale=2;$a / $b" | bc`
echo $div


# 3.Write a program to print calendar of current month in next year,previous years. For eg:- sep 2014,sep 2012 if current month is sep 2013
cal -my 10 2020; cal -my 10 2018

# 4.Write a program to check whether given no.is even or odd
touch evenodd.sh

echo 'Enter first number'
read a
c=`expr $a % 2`
if [ $c == 0 ] # SPACE IS COMPULSORY FOR IF CONDITION IN BETWEEN EQUALITY OPERATOR
then 
    echo 'even'
else
    echo 'odd'
fi

# 5.
# a) Write a script to find biggest of three no.s
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
# b) To find avg of 3 no.s, read no.s from keyboard
avg=`echo "scale=2; ($a+$b+$c)/3" | bc`
echo "The average of $a $b $c is $avg"

# 6.Write a script to check type of a traingle.Sides of the triangle should be provided as command line arguments.
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

# 7. Write a script to print day of the week using a) elif b) case
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



# 8.To check given year is leap or not

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
