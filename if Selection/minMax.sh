#!/bin/bash -x

#VARIABLES
min=$((2**63-1))
numbers=3

while [ $numbers -gt 0 ]
do
	random=$((100+RANDOM%900))
	echo random $((-numbers+4)) : $random
	if [ $random -lt $min ]
	then
		min=$random
	fi
	numbers=`expr $(($numbers-1))`
done
echo Minimum value : $min
