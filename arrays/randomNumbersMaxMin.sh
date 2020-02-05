#!/bin/bash -x

#VARIABLES
min=1000
max=99
sMin=1000
sMax=99

#GET MINIMUM AND MAXIMUM
for (( counter=1;counter<=10;counter++ ))
do
	array[$counter]=$((100+RANDOM%900))
	if [ ${array[counter]} -gt $max ]
	then
		max=${array[counter]}
	fi

	if [ ${array[counter]} -lt $min ]
	then
		min=${array[counter]}
	fi
done

echo ${array[@]}

#GET SECOND MAXIMUM AND SECOND MINIMUM
for (( counter=1;counter<=10;counter++ ))
do
	if [ ${array[counter]} -lt $sMin -a ${array[counter]} -ne $min ]
	then
		sMin=${array[counter]}
	fi

	if [ ${array[counter]} -gt $sMax -a ${array[counter]} -ne $max ]
	then
		sMax=${array[counter]}
	fi
done

echo Second Minimum : $sMin
echo Second Maximum : $sMax
