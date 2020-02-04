#!/bin/bash -x

#READ DATE
read -p "Enter day" day
read -p "Enter month" month

#DATE VALIDATION
if [ $day -gt 31 ] || [ $month -gt 12 ] || [ $month -le 0 ] || [ $day -le 0 ]
then 
        echo "Invalid Date"
	exit
fi
if [ \( $month -eq 4 -o $month -eq 6 \) -a \( $day -gt 30 \) ]
then 
	echo "Invalid Date"
	exit
fi

#CHECK IF DATE IS BETWEEN MARCH 20 AND JUNE 20
if [ \( $month -eq 3 -a $day -ge 20 \) -o \( $month -eq 4 \) -o \( $month -eq 5 \) -o  \( $month -eq 6 -a $day -le 20 \) ]
then 
	echo true
else
	echo false
fi
