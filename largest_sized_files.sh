#!/bin/bash

echo "Enter directory path: "
read directory

if [ ! -d "$directory" ]; then
	echo "Directory '$directory' not found"
	exit 1
fi

echo "Largest File Size in Directory: $directory"
find "$directory" -type f -exec du -h {} + | sort -hr | head -n 5
