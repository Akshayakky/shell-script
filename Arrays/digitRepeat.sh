#!/bin/bash -x
count=0
for (( counter=0;counter<100;counter++ ))
do
	if [ $(($counter%10)) -eq $(($counter/10)) -a $(($counter/10)) -ne 0 ]
	then
		array[((count++))]=$counter 
	fi
done
echo ${array[@]}
