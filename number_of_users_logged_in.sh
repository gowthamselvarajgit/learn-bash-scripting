#!/bin/bash

user_count=$(who | awk '{print $1}' | sort | uniq | wc -l)

echo "Number of users currently logged in: $user_count"
