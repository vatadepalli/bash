#!/bin/bash

# A shell variable is capable enough to hold a single value. These variables are called scalar variables.
# Array variable. Can hold multiple values at the same time.

# Difference between Array Variable & a Scalar Variable

# Each of the individual variables is a SCALAR variable
NAME01="Zara"
NAME02="Qadir"
NAME03="Mahnaz"
NAME04="Ayan"
NAME05="Daisy"

# We can use a single array to store all the above mentioned names. 
NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"

echo "First Element: ${NAME[0]}"
echo "Second Elemenet: ${NAME[1]}"

echo "${NAME[*]}"
echo "${NAME[@]}"