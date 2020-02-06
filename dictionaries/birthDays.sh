#!/bin/bash -x

#DECLARING TWO DICTIONARIES
declare -A birth
declare -A birthDays

months=(January February March April May June July August September October November December)

#STORING KEY AS PERSON1,PERSON2... AND VALUE AS MONTH AND YEAR IN DICTIONARY BIRTH
for (( counter=1;counter<=50;counter++ ))
do
	month=$((1+RANDOM%12))
	year=$((92+RANDOM%2))
	birth[ "person"$counter ]="${months[$month-1]} $year"
done

#STORING KEY AS JANUARY,FEBRUARY... AND VALUE AS PERSON1,PERSON2... IN DICTIONARY BIRTHDAYS
for (( counter=1;counter<=50;counter++ ))
do
	b=$(echo ${birth[ "person"$counter ]})
	echo person$counter : $b 
 	a=$(echo ${birth[ "person"$counter ]} | cut -f 1 -d " ")
	birthDays[$a]="${birthDays[$a]} person$counter"
done
printf "\n"

#PRINTING INDIVIDUALS HAVING BIRTHDAY IN SAME MONTH
for (( counter=1;counter<=12;counter++ ))
do
	echo ${months[$counter-1]} : ${birthDays[${months[$counter-1]}]}
done
