#!/bin/bash

echo "Enter the number: "
read number

remainder=$(( number % 2))

if [ $remainder -eq 0 ]; then
	echo "The number is even"
else
	echo "The number is odd"
fi
