#!/bin/bash

echo "Enter the file name: "
read filename

if [ ! -f "$filename" ]; then
	echo "File does not exist."
	exit 1
fi


lines=$(wc -l < "$filename")
word=$(wc -w < "$filename")
char=$(wc -c < "$filename")

echo "Lines=$lines"
echo "Words=$word"
echo "Characters=$char"

