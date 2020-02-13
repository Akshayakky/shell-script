#!/bin/bash -x

#VARIABLES
numbers=5
min=1000
max=99

while [ $numbers -gt 0 ]
do
	random=$((100+RANDOM%900))
	echo Random : $random
	if [ $random -lt $min ]
	then
		min=$random
	fi
	if [ $random -gt $max ]
	then
		max=$random
	fi
	((numbers--))
done

echo minimum value : $min
echo maximum value : $max
