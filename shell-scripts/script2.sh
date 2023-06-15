#!/bin/bash

read -p "enter full path of the directory: " directory

eval directory="$directory"

last_modified=$(ls -t "$directory" | head -n 1)

echo "last modified file in $directory is $last_modified"
