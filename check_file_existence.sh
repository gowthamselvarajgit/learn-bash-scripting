#!/bin/bash

check_file(){
	filename=$1

	if [ -f "$filename" ]; then
		echo "File exists"
	else 
		echo "File does not exist"
	fi

}

echo "Enter the file name with path: "
read user_input


check_file "$user_input"
