#!/bin/bash -x

read -p "Enter day number between 1 and 7 : " day

#READ A NUMBER AND PRINT THE DAY OF WEEK 
if [ $day -eq 1 ]
then 
	echo Sunday
elif [ $day -eq 2 ]
then 
	echo Monday
elif [ $day -eq 3 ]
then 
	echo Tuesday
elif [ $day -eq 4 ]
then 
	echo Wednesday
elif [ $day -eq 5 ]
then 
	echo Thursday
elif [ $day -eq 6 ]
then
	echo Friday
elif [ $day -eq 7 ]
then
	echo Saturday
else
	echo Enter Number between 1 and 7
fi
