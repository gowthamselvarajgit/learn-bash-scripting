#!/bin/bash

echo "Enter the directory path: "
read directory

if [ ! -d "$directory" ]; then
	echo "Directory does not exist."
	exit 1;
fi

for file in "$directory"/*; do
	basefile=$(basename "$file")

	lowerfile=$(echo "$basefile" | tr '[:upper:]' '[:lower:]')

	if [ "$basefile"  != "$lowercase" ]; then
	 	mv "$dir/$basefile" "$dir/$lowerfile"
		echo "Renamed: $basefile --> $lowerfile"
	fi
done
