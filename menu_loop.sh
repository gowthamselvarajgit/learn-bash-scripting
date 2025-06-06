#!/bin/bash

choice=0

while [ $choice -ne 4 ]
do
	echo "====MENU===="
	echo "1. Show date"
    	echo "2. Show current directory"
    	echo "3. Show calendar"
    	echo "4. Quit"
    	echo "Enter your choice:"
	read choice

	case $choice in
		1) date ;;
		2) pwd ;;
		3) cal ;;
		4) echo "Good Bye" ;;
		*) echo "Invalid option. Please try again." ;;
	esac
done
