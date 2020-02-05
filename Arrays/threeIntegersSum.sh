#!/bin/bash -x

arrays=(1 -1 0 2 3 -3)
l=1
r=$((${#arrays[@]}-1))
function  sort(){
array=("$@")
for (( i=0;i<$((${#array[@]}-1));i++ ))
do
	for (( j=0;j<$((${#array[@]}-1));j++ ))
	do
		if [ ${array[j]} -gt ${array[j+1]} ]
		then
			temp=${array[j]}
			array[j]=${array[j+1]}
			array[j+1]=$temp
		fi
	done
done
echo ${array[@]}
}

array=($(sort ${arrays[@]}))
echo ${array[@]}
for (( counter=0;counter<${#array[@]};counter++ ))
do
l=$(($counter+1))
r=$((${#arrays[@]}-1))
	while [ $l -lt $r ]
	do
	if [ $((${array[counter]} + ${array[l]} + ${array[r]})) -eq 0 ]
	then 
		echo ${array[counter]} ","  ${array[l]} ","  ${array[r]}
		((l++));
		((r--))
	elif [ $((${array[counter]} + ${array[l]} + ${array[r]})) -lt 0 ]
	then
		((l++));
	else
		((r--));
	fi
	done
done
