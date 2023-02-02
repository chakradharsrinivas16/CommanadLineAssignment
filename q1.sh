#!/bin/bash

current_date=$(date +"Year: %Y, Month: %m, Day: %d") # Command to fetch the date
current_time=$(date +"%T") # Command to fetch the time
current_user=$(whoami) # Command to fetch the current working user
home_directory=$(echo $HOME) # Command to fetch the Home directory
current_directory=$(pwd) # Command to fetch the current wokring directory

# Printing the fetched variables
echo "Current date: $current_date"
echo "Current time: $current_time"
echo "Username: $current_user"
echo "Home directory: $home_directory"
echo "Current working directory: $current_directory"

exit 0
