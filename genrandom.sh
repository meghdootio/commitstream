#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <min> <max>"
    exit 1
fi

min="$1"
max="$2"

random_number=$(shuf -i "$min"-"$max" -n 1)

echo $random_number
sleep $random_number

