#!/bin/bash

echo "CPU Information"

echo -n "Model: "
grep 'model name' /proc/cpuinfo | head -1 | awk -F: '{print $2}' |sed 's/^ //'

echo -n "Number of Cores: "
grep -c ^processor /proc/cpuinfo

echo "Architecture"
uname -m
