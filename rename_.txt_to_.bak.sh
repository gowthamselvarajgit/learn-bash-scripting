#!/bin/bash

echo "Enter the directory path: "
read directory

if [ -d "$directory" ]; then
	echo "Renaming .txt files to .bak in $directory ...."

	for file in "$directory"/*.txt; do

		if [ -e "$file" ]; then
			newfile="${file%.txt}.bak"
			mv "$file" "$newfile"
			echo "Renamed: $(basename "$file") -> $(basename "$newfile")"
		fi
	done

	echo "Done"
else
	echo "Directory does not exist"
fi
