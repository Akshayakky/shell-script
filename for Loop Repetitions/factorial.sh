#!/bin/bash -x

read -p "Enter number : " number

#INITIALIZE FACTORIAL VARIABLE WITH 1
factorial=1

#RUN FOR LOOP DECREASING COUNTER BY 1 TILL 1 AND MULTIPLY TO FACTORIAL
for (( counter = $number;counter>=1;counter-- ))
do
	factorial=$(($factorial*$counter))
done
echo $factorial
