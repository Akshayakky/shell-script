#!/bin/bash -x

#VARIABLES
min=$((2**63-1))
max=$((min*-1))

        random=$((100+RANDOM%900))
        echo Random : $random
        if [ $random -lt $min ]
        then
                min=$random
        fi
        if [ $random -gt $max ]
        then
                max=$random
        fi
       
        random=$((100+RANDOM%900))
        echo Random : $random
        if [ $random -lt $min ]
        then
                min=$random
        fi
        if [ $random -gt $max ]
        then
                max=$random
        fi

        random=$((100+RANDOM%900))
        echo Random : $random
        if [ $random -lt $min ]
        then
                min=$random
        fi
        if [ $random -gt $max ]
        then
                max=$random
        fi

        random=$((100+RANDOM%900))
        echo Random : $random
        if [ $random -lt $min ]
        then
                min=$random
        fi
        if [ $random -gt $max ]
        then
                max=$random
        fi

        random=$((100+RANDOM%900))
        echo Random : $random
        if [ $random -lt $min ]
        then
                min=$random
        fi
        if [ $random -gt $max ]
        then
                max=$random
        fi

echo minimum value : $min
echo maximum value : $max
