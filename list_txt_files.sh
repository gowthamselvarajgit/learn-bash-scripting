#!/bin/bash

echo "List all .txt files in home directory"

for file in $HOME/*.txt
do
	if [ -f "$file" ];then
		echo "$file"
	fi
done
