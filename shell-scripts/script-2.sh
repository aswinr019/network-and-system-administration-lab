#!/bin/bash

# Write a script to compare numbers.

read -p "enter first number: " number1
read -p "enter second number: " number2

if [ $number1 -eq $number2 ]; then 
	echo "The numbers are equal"
elif [ $number1 -gt $number2 ]; then
	echo "Number one is greater"
else 
	echo "Number two is grater"
fi
