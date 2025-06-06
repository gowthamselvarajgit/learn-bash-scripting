#!/bin/bash

echo "Enter Directory Path: "
read directory

if [ -d "$directory" ]; then
	count=$(ls "$directory" | wc -l)
	echo "Total items in $directory: $count"
else
	echo "Directory does not"
fi
