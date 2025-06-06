#!/bin/bash

echo "Enter the directory path: "
read directory

if [ ! -d "$directory" ]; then
	echo "Directory not found"
	exit 1
fi

du -sh "$directory"
