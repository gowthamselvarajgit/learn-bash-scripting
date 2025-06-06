#!/bin/bash

echo "Enter Starting Number: "
read number

while [ $number -ge 0 ]
do
	echo $number
	sleep 1
	number=$((number - 1))
done

echo "Time's up!"
