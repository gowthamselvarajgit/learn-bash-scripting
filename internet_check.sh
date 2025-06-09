#!/bin/bash

if ping -c 1 google.com > /dev/null 2>&1
then
	echo "Internet is connected"
else
	echo "No internet access"
fi
