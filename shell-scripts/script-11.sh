#!/bin/bash

# Write a shell script to validate password strength . Here are a few assumptions for the password string.
# Length -  minimum character length is eight. Contain both alphabet and number. Include both small and capital case letters.
# If the password doesn't comply with any of the above conditions , then the scipt should report it as "weak password".


read -p "Enter a password to check : " password


if [[  "${#password}" -lt 10 ]]; then
	echo "Weak password : Password should atleast contain 10 characters!"
elif [[ ! "$password" =~ [a-z] ]]; then
	echo "Weak password : Password should atleast contain one lowercase character"
elif [[ ! "$password" =~ [A-Z] ]]; then 
	echo "Weak password : password should atleast contain one uppercase character"
elif [[ ! "$password" =~ [0-9] ]]; then
	echo "Weak password : password should atlest contain one number"
elif [[ ! "$password" =~ [!@$%*()] ]]; then
	echo "Weak password : password should atleast contain one special charcter"
else
	echo "Strong password!"
fi
