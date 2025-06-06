#!/bin/bash

for item in  "$HOME"
do
	if [ -d "$item" ]; then
		echo "$item is a directory"
	elif [ -f "$item" ]; then
		echo "$item is a file"
	else 
		echo "$item is something else"
	fi
done
