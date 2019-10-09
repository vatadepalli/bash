#!/bin/bash

echo "Enter the dividend"
read a
echo "Enter the divisor"
read b

quo=`echo "scale=2; $a/$b" | bc`

echo "The quotient is : $quo"


