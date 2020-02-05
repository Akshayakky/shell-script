#!/bin/bash -x

#INPUT THREE NUMBERS a,b AND c
read -p "Enter three numbers : " a
read b
read c

#OUTPUT THE RESULT OF OPERATIONS
output=$(( a+b*c ))
	echo $output
output=$(( c+a/b ))
	echo $output
output=$(( a%b+c ))
	echo $output
output=$(( a*b+c ))
	echo output

#CHECKING FOR MAXIMUM NUMBER AMONG a, b AND c
if [ $a -gt $b ]
then
	max=$a
else
	max=$b
fi
if [ $c -gt $max ]
then
	max=$c
fi

#CHECKING FOR MINIMUM NUMBER AMONG a, b AND c
if [ $a -lt $b ]
then
	min=$a
else
	min=$b
fi
echo Minimum : $min
echo Maximum : $max
