#!/bin/bash

echo "Enter the directory path: "
read directory

if [ ! -d "$directory" ]; then
  echo "Directory does not exist."
  exit 1
fi

echo "Searching for .txt files modified in the last 7 days..."

found_files=$(find "$directory" -type f -name "*.txt" -mtime -7)

if [ -z "$found_files" ]; then
	echo "No .txt files modified in last 7 days"
else
	echo "File found"
	echo "$found_files"
fi
