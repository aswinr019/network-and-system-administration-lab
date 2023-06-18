#!/bin/bash

# Write a shell script to display the last updated file or the newest tile in the directory.
read -p "enter full path of the directory: " directory

eval directory="$directory"

last_modified=$(ls -t "$directory" | head -n 1)

echo "last modified file in $directory is $last_modified"
