#!/bin/bash -x

#VARIABLES
money=100
bets=0
wins=0

#WHILE GAMBLER TARGET IS NOT REACHED AND MONEY IS LEFT
while [[ $money -gt 0 && $money -lt 200 ]]
do
	((bets++))
	random=$((RANDOM%2))
	if [ $random == 0 ]
	then
		money=$((money-1))
	else
		((wins++))
		money=$((money+1))
	fi
done

echo Bets : $bets
echo Wins : $wins
echo Money : $money
