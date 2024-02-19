#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <number_between_1_and_10>"
    exit 1
fi
random_number=$(shuf -i "1"-"10" -n 1)

if (( $random_number < $1 )); then
	echo "$random_number, so fail"
	exit -1;
fi

echo $random_number
exit 0

