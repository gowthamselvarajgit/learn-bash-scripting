#!/bin/bash

correct_password="linux"
attempts=0;

while [ $attempts -lt 3 ]
do
	echo -n "Enter password: "
	read -s user_input
	echo

	if [ "$user_input" = "$correct_password" ]; then
		echo "Access Granted"
		exit 0
	else
		echo "Incorrect password"
	fi

	attempts=$((attempts + 1))
done

echo "Access Denied. Too many incorrect attempts"
