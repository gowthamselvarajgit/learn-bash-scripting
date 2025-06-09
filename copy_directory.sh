#!/bin/bash

copy_dir() {
	src_dir=$1
	dest_dir=$2

	if [ -d "$src_dir" ]; then
		cp -r "$src_dir" "$dest_dir"
		echo  "Directory copied from $src_dir to $dest_dir"
	else
		echo "Source directory does not exist"
	fi
}

echo "Enter the Source Directory:"
read src_input

echo "Enter the Destination Directory: "
read dest_input

copy_dir "$src_input" "$dest_input"

