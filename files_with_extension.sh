#!/bin/bash

find_files() {
	dir_path=$1
	extension=$2

	if [ -d "$dir_path" ]; then
		echo "Files with extension $extension in $dir_path: "
		find "$dir_path" -type f -name "*$extension"
	else
		echo "Directory does not exist"
	fi
}

echo "Enter the directory path: "
read dir_input

echo "Enter the file extension: "
read ext_input

find_files "$dir_input" "$ext_input"
