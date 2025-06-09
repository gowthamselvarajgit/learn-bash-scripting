#!/bin/bash

echo "Enter the file name: "
read filename

if [ ! -f "$filename" ]; then
	echo "File does not exist."
	exit 1
fi

echo "Enter the word to search: "
read search_word

echo "Enter the word to replace: "
read replace_word

sed -i "s/$search_word/$replace_word/g" "$filename"

echo "All occurrences of '$search_word' hav e been replaced by '$replace_word' in '$filename'"

