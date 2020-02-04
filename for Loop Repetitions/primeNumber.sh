#!/bin/bash -x

read -p "Enter any number : " number
isPrime=1

#FOR LOOP TO CHECK IF ANY NUMBER DIVIDES ENTERED NUMBER
for (( counter=2;counter<=$number/2;counter++))
do
	if [ $(($number%$counter)) -eq 0 ]
	then
		isPrime=0
		break
	fi
done
if [ $isPrime -eq 1 ]
then 
	echo "Prime Number"
else
	echo "NOt Prime NUmber"
fi
