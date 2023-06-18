#!/bin/bash

# Write a shell script to check to see if the file "file_path" exists. If it does exists , display "file_path passwords are enabled." 
# Next , check to see if you can write to the file. If you can , display "You have permissions to edit "file_path."". If you cannot
# display "You dot not have permissions to edit "file_path"".

read -p "enter the full path to file : " file_path
 
eval file_path="$file_path"

if [ -f "$file_path" ]; then
	echo "$file_path passwords are enabled"
	if [ -w $file_path ]; then
		echo "you have permission to edit $file_path"
	else
		echo "you do not have permission to edit $file_path"
	fi
else
	echo "file does not exists!"
fi


