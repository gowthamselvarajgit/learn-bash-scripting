#!/bin/bash

usage=$(df / | awk 'NR==2 {gsub("%", "", $5); print $5}')

if [ "$usage" -ge 80 ]; then
	echo "Warning: Root file system has reached '$usage'%"
else
	echo "Disk usage is under control '$usage'%"
fi
