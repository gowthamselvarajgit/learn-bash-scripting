#!/bin/bash

echo "Enter the number:"
read number

for i in {1..10}
do
	echo "$i * $number = $((number * i))"
done

