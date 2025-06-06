#!/bin/bash

echo "Enter the Process name: "
read process_name

if pgrep "$process_name" > /dev/null
then
	echo "Yes, the process '$process_name' is running"
else
	echo "No, the process '$process_name' is not running"
fi
