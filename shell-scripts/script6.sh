#!/bin/bash

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
