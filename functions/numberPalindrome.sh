#!/bin/bash -x

read -p " Enter number : " number

#FUNCTION TO CHECK IF NUMBER IS PALINDROME
function isPalindrome(){
	local sum=0;
	local number=$1
	while [ $number -gt 0 ]
	do
		remainder=$((number%10));
		sum=$((sum*10+remainder));
		number=$((number/10));
	done

	if [ $sum -eq $1 ]
	then
		echo "$1 is Palindrome"
	else
	echo "$1 is Not Palindrome "
	fi
	}

echo "$( isPalindrome $number )"
