#!/bin/bash

echo "Enter the process name: "
read process_name

if pgrep -x "$process_name" > /dev/null
then
	echo "Process is running"
else
	echo "Process is not found"
fi
