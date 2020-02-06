#!/bin/bash -x

declare -A dieNumber
flag=1
min=1
while [ $flag -eq 1 ]
do
	random=$((1+RANDOM%6))
	dieNumber[$random]=$((${dieNumber[$random]}+1))
	if [ $((${dieNumber[$random]})) -eq 10 ]
	then
		flag=0
	fi
done

echo ${dieNumber[@]}
echo ${!dieNumber[@]}

for (( counter=2;counter<=6;counter++ ))
do
if [ ${dieNumber[$counter]} -lt ${dieNumber[$min]} ]
then
	min=$counter
	unset array
	count=0
elif [ ${dieNumber[$counter]} -eq ${dieNumber[$min]} ]
then
	array[$count]=$counter
	((count++))
fi
done

echo Maximum times : $random
echo Minimum times : $min ${array[@]}
