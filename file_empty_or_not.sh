#!/bin/bash

echo "Enter the file name: "
read filename

if [ -f "$filename" ]; then
	if [ -s "$filename" ]; then 
		echo "File '$filename' is NOT Empty"
	else
		echo "File '$filename' is Empty"
	fi
else
	echo "File '$filename' does not exist"
fi
