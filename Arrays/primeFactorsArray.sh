#!/bin/bash -x

#CALCULATING PRIME FACTORS OF A NUMBER
read -p "Enter the number : " number
flag=0
count=0
storeNumber=$number

#FIRST FOR LOOP FOR THE POSSIBLE PRIME FACTORS
for (( counter=2;$((counter*counter))<=$storeNumber;counter++ ))
do
	#TO CHECK IF COUNTER IS A FACTOR
	if [ $(($number%$counter)) -eq 0 ]
	then
		number=$((number/counter))
		array[count]=$counter
		((count++))
		((counter--))
	fi
done

echo ${array[@]}

