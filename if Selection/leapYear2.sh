#!/bin/bash -x

read -p "Enter Year" year

#CHECK LEAP YEAR
if [ \( $(($year%4)) -eq 0 -a $(($year%100)) -ne 0 \) -o \( $(($year%400)) -eq 0 \) ]
then 
echo Leap Year
else 
echo not leap year
fi
