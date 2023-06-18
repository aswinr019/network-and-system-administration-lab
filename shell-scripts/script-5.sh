#!/bin/bash

# Write a shell script to add an extension ".new" to all files in a directory. 

read -p "enter the full path to directory: " directory

eval directory="$directory"

extension=".new"

for file in "$directory"/*; do
	if [ -f "$file" ]; then
		new_file="${file}${extension}"
		mv "$file" "$new_file"
		echo "renamed $file to $new_file"
	fi
done
