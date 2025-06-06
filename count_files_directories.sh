#!/bin/bash

echo "Enter the directory path: "
read directory

if [ ! -d "$directory" ]; then
	echo "Directory not found"
	exit 1
fi

num_files=$(find "$directory"  -maxdepth 1 -type f | wc -l)

num_dir=$(find "$directory" -maxdepth 1 -type d | wc -l)

echo "Number of Files in $directory = $num_files"
echo "Number of Directories in $directory = $((num_dir -1 ))"
