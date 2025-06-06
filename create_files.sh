#!/bin/bash

while  true
do
	echo -n "Enter file name (or type 'stop' to quit): "
	read filename

	if [ "$filename" = "stop" ]; then
		echo "Stopped creating files"
		break
	fi

	touch "$filename"
	echo "File '$filename' created."
done
