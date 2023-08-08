#!/bin/bash

# Write a script that deletes a file which has special characters in its file name.

read -p "enter full path to directory: " directory

eval directory="$directory"

for file in "$directory"/*; do 
	filename=$(basename "$file")		
	if [[ ! "$filename" =~ ^[a-zA-Z0-9_-]+$ ]]; then
		rm "$file"	
		echo "File $filename removed"
	fi
done


