#!/bin/bash

# Write a shell script to get current date , time , username and current working directory.

current_date_time=$(date)
username=$(whoami)
current_directory=$(pwd)

echo "Current date & time : $current_date_time"
echo "Username : $username"
echo "Current working directory : $current_directory"
