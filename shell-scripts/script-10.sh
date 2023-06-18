#!/bin/bash

# Write a shell script to get the total count of the word "Linux" in all the ".txt" files and also across files present in sub-directories.

count_linux_word() {
  local file="$1"
  local count=0

  if [ ! -f "$file" ]; then
    echo "File not found: $file"
    return
  fi

  count=$(grep -o -i "Linux" "$file" | wc -l)

  echo "File: $file"
  echo "Count of 'Linux': $count"
  echo

  return $count
}

traverse_directory() {
  local directory="$1"

  for item in "$directory"/*; do
    if [ -f "$item" ] && [ "${item##*.}" == "txt" ]; then
      count_linux_word "$item"
    elif [ -d "$item" ]; then
      traverse_directory "$item"
    fi
  done
}

echo "Enter the directory path: "
read -r directory_path

if [ ! -d "$directory_path" ]; then
  echo "Directory not found!"
  exit 1
fi

total_count=0

traverse_directory "$directory_path"

while read -r count; do
  total_count=$((total_count + count))
done < <(grep "Count of 'Linux':" | awk '{print $NF}')

echo "Total Count of 'Linux' across all files: $total_count"
