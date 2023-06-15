#!/bin/bash

read -p "enter password: " password

length=${#password}

if [ -n "$password" ]; then 
	if [ $length -gt 7 ]; then
		if  [[ "$password" =~ ^[[:alnum:]]+$ ]];  then
			if [[ "$password" =~ [[:lower:]] && "$password" =~ [[:upper:]] ]]; then
				echo "strong password"
			else
				echo "weak password!"
			fi
		fi
	else
		echo "weak password!"
	fi
else 
	echo "please enter a password!"
fi
