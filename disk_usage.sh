#!/bin/bash

echo "Enter the directory path: "
read directory

if [ -d "$directory" ]; then

	echo "Disk usgae of $directory: "
	du -sh "$directory"
else
	echo"Directory not found"
	exit 1
fi
