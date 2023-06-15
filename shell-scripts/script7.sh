#!/bin/bash

read -p "enter full path to directory: " directory

eval directory="$directory"


for file in "$directory"/*; do 
	if [[ "$file" =~ [^a-zA-Z0-9_-] ]]; then
		rm "$file"
		echo "File $file removed"
	fi
done


