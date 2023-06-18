#!/bin/bash

# Write a shell script to print a number in reverse order. It should support the following requirements
# a) the script should accept the input from the command line.
# b) If you don't input any data , then display an error message to execute the script correctly.

read -p "enter a number : " number

saved=$number
reversed=0

if [ -n "$number" ]; then
	while [ "$number" -gt 0 ]; do 
		remainder=$(( number % 10))
		reversed=$(( reversed * 10 + remainder ))
		number=$(( number / 10 ))

	done
	echo "reverse of $saved is $reversed"
else
	echo "Please enter a number!"
fi
