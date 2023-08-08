#!/bin/bash

# Write a shell script to get the total count of the word "Linux" in all the ".txt" files and also across files present in sub-directories.

read -p "enter the full path to direcory : " path

eval path="$path"
word="Linux"

grep -ri --include="*.txt" "$word" "$path" | wc -l

