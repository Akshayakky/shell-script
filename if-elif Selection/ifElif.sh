#!/bin/bash -x

#VARIABLES
var1=20
var2=30

#USING IF, ELIF AND ELSE TO COMPARE TWO NUMBERS AND PRINT THE OUTPUT
if [ $var1 -gt $var2 ]
then 
	echo var1 greater than var2
elif [ $var1 -eq $var2 ]
then 
	echo var1 is equal to var2
else
	echo var1 is less than var2
fi
