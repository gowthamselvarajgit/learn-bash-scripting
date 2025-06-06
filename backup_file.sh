#!/bin/bash

echo "Enter the file name to backup: "
read filename

if [ -f "$filename" ]; then

	timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

	backup_file="${filename}_$timestamp"

	cp "$filename" "$backup_file"

	echo "Backup file created Successfully: $backup_file"
else
	echo "File $filename does not exist"
fi
