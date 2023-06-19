#!/bin/bash

# Write a shell script to validate password strength . Here are a few assumptions for the password string.
# Length -  minimum character length is eight. Contain both alphabet and number. Include both small and capital case letters.
# If the password doesn't comply with any of the above conditions , then the scipt should report it as "weak password".

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
