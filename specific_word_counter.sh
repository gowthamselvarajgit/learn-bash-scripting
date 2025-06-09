#!/bin/bash

echo "Enter the file name: "
read filename

echo "Enter the word: "
read word

if [ -f "$filename" ]; then
	count=$(grep -c "$word" "$filename")
	echo "Number of  '$word' in '$filename': $count"
else
	echo "File does not exist"
fi

