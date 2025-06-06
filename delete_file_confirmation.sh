#!/bin/bash

echo "Enter file name to delete: "
read filename

if [ -f "$filename" ]; then
	echo -n "Do you want to delete the file '$filename' (y for yes and n for no): "
	read answer

	if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
		rm "$filename"
		echo "File '$filename' Deleted"
	else
		echo "Deletion cancelled."
	fi
else
	echo "File '$filename' does not exist"
fi
