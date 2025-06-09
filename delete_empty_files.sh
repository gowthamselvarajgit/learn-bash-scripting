#!/bin/bash

echo "Enter the Directory: "
read directory

if [ -d "$directory" ]; then
	echo "Empty files in $directory: "
	find "$directory" -type f -empty

	echo "Do you want to delete these empty files? (yes/no): "
	read confirm

	if [ "$confirm" == "yes" ]; then
		find "$directory" -type f -empty -delete
		echo "Empty files deleted."
	else
		echo "No files were deleted."
	fi
else
	echo "Directory does not exist."
fi
