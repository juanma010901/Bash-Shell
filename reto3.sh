#!/bin/bash

# Program:
#    This program asks the user to enter a number between 1 and 5.
#    If the user enters a number between 1 and 5, the program displays
#    the corresponding message.

entered_number=0


read -n1 -p "Enter a number between 1 and 5: " entered_number
echo -e "\n"

if [ $entered_number -eq 1 ]; then
    echo "You entered 1"
elif [ $entered_number -eq 2 ]; then
    echo "You entered 2"
elif [ $entered_number -eq 3 ]; then
    echo "You entered 3"
elif [ $entered_number -eq 4 ]; then
    echo "You entered 4"
elif [ $entered_number -eq 5 ]; then
    echo "You entered 5"
else
    echo "You did not enter a number between 1 and 5"
fi
