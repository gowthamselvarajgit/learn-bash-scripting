#!/bin/bash

echo "Enter the directory path: "
read directory

echo "Enter the file size (e.g., 100M, 1G, 500K): "
read fileSize

if [ -d "$directory" ]; then

	echo "Files larger than $filesize in $directory: "
	find "$directory" -type f -size +"$fileSize" -exec ls -lh {} \; | awk ' {print $9 ":" $5 }'
else
	echo "Directory does not exist."
	exit 1
fi
