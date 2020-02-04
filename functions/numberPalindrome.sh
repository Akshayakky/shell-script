#!/bin/bash -x

read -p " Enter number : " numbers

#FUNCTION TO CHECK IF NUMBER IS PALINDROME
function isPalindrome(){
sum=0;
number=$1
while [ $number -gt 0 ]
do
	remainder=$((number%10));
	sum=$((sum*10+remainder));
	number=$((number/10));
done

if [ $sum -eq $1 ]
then
	echo "Palindrome"
else
	echo "Not Palindrome "
fi
}

echo "$( isPalindrome $numbers )"
