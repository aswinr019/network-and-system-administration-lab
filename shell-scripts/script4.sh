#!/bin/bash

read -p "enter the full path to file : " file_path
 
eval file_path="$file_path"

if [ -f "$file_path" ]; then
	echo "file passwords are enabled"
	if [ -w $file_path ]; then
		echo "you have permission to edit $file_path"
	else
		echo "you do not have permission to edit $file_path"
	fi
else
	echo "file does not exists!"
fi


