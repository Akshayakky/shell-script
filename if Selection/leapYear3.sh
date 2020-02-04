#!/bin/bash -x

read -p "Enter Year" year
if [[($(($year%4))==0) && ($(($year%100))!=0)]] || [[$(($year%400))==0]] 
then
	echo leap year
else
	echo not leap year
fi
