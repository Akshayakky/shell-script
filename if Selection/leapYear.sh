#!/bin/bash -x

read -p "Enter Year" year

if [ $(($year%400)) -eq 0 ] 
then 
	echo leap year1
elif [ $(($year%4)) -eq 0 ] && [ $(($year%100)) -ne 0 ]
then
	echo leap year
else
	echo Not Leap Year
fi

