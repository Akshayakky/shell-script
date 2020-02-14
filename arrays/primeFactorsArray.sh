#!/bin/bash -x

#VARIABLES
flag=0
count=0

read -p "Enter the number : " number
storeNumber=$number

#FIRST FOR LOOP FOR THE POSSIBLE PRIME FACTORS
for (( counter=2; $((counter*counter))<=$storeNumber; counter++ ))
do
	#TO CHECK IF COUNTER IS A FACTOR
	if [ $(($number%$counter)) -eq 0 ]
	then
		#USING PRIME FACTORIZATION
		number=$((number/counter))
		array[count]=$counter
		((count++))
		((counter--))
	fi
done

if [ ${#array[@]} -eq 0 ]
then
	echo "$storeNumber is Prime Number"
else
	echo ${array[@]}
fi

