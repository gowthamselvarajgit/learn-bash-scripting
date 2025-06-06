#!/bin/bash

echo "Enter a number: "
read number

if [ "$number" -gt 0 ]; then
	echo "The Number is Positive"
elif [ "$number" -lt 0 ]; then
	echo "The Number is Negative"
else
	echo "The Number is Zero"
fi
