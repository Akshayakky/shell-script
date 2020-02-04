#!/bin/bash -x

read -p "Enter any one digit number" number

#READ A SINGLE DIGIT NUMBER AND PRINT IN WORD USING CASE STATEMENT
case $number in
	0)	
		echo Zero
		;; 
	1) 
		echo One
		;;
	2)
		echo Two
		;;
	3)
		echo Three
		;;
	4)
		echo Four
		;;
	5)
		echo Five
		;;
	6)
		echo Six
		;;
	7) 
		echo Seven
		;;
	8) 
		echo Eight
		;;
	9) 
		echo Nine
		;;
	*) 
		echo Enter One Digit NUmber
		;;
esac
