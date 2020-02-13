#!/bin/bash -x

#INPUT THREE NUMBERS a,b AND c
read -p "Enter three numbers : " a
read b
read c

#OUTPUT THE RESULT OF OPERATIONS
compute1=$(( a+b*c ))
compute2=$(( c+a/b ))
compute3=$(( a%b+c ))
compute4=$(( a*b+c ))

#CHECKING FOR MAXIMUM VALUE AMONG COMPUTES
if [ $compute1 -gt $compute2 -a $compute1 -gt $compute3 -a $compute1 -gt $compute4 ]
then
	max=$compute1
elif [ $compute2 -gt $compute3 -a $compute2 -gt $compute4 ]
then
	max=$compute2
elif [ $compute3 -gt $compute4 ]
then
	max=$compute3
else
	max=$compute4
fi

#CHECKING FOR MINIMUM VALUE AMONG COMPUTES
if [ $compute1 -lt $compute2 -a $compute1 -lt $compute3 -a $compute1 -lt $compute4 ]
then
	min=$compute1
elif [ $compute2 -lt $compute3 -a $compute2 -lt $compute4 ]
then
	min=$compute2
elif [ $compute3 -lt $compute4 ]
then
	min=$compute3
else
	min=$compute4
fi
