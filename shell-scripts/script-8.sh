#!/bin/bash

# Write a shell script to find out the unique words in a file and also count the occurrnece of each of these words. We say that the file under # consideration contains many lines , and each line has multiple words.

read -p "Enter the file path: "file_path

eval file_path="$file_path"

if [ ! -f "$file_path" ]; then
  echo "File not found!"
  exit 1
fi

declare -A word_count

while IFS= read -r line; do
  words=($line)

  for word in "${words[@]}"; do
    cleaned_word=$(echo "$word" | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]')

    ((word_count["$cleaned_word"]++))
  done
done < "$file_path"

echo "Unique words and their counts:"
for word in "${!word_count[@]}"; do
  count=${word_count["$word"]}
  echo "$word: $count"
done
