#!/bin/bash -x

#GENERATE 10 RANDOM NUMBERS AND STORE IN ARRAY
for (( counter=1; counter<=10; counter++ ))
do
array1[$counter]=$((100+RANDOM%900))
done

echo ${array1[@]}

#SORTING THE ARRAY
function  sort(){
array=("$@")
for (( i=0; i<$((${#array[@]}-1)); i++ ))
do
	for (( j=0; j<$((${#array[@]}-1)); j++ ))
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

#CALL SORT FUNCTION AND STORE THE RESULT IN ARRAY
array=($(sort ${array1[@]}))
echo ${array[@]}

#LENGTH OF ARRAY
length=${#array1[@]}

echo Second Largest Element : ${array[length-2]}
echo Second Smallest Element : ${array[1]}
