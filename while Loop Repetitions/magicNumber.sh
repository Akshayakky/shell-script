#!/bin/bash -x

echo "Guess any number between 1 to 100"

#VARIABLES
lower=1
upper=100
mid=0

#WHILE GUESSED NUMBER IS NOT FOUND
while [ $lower != $mid ]
do
	mid=$((lower+(upper-lower)/2))
	read -p "Is number between  $lower and $mid " ans
	if [ $mid -eq $lower ]
	then
		if [ $ans -eq 1 ]
		then
			echo $mid
			break
		else
			echo $(($mid+1))
			break
		fi
	fi
	if [ $ans == 1 ]
	then	
		upper=$mid
	else
		lower=$(($mid+1))
	fi
done 
