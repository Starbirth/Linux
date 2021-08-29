e<Documentation
NAME            : V. Karthikeyan
DATE            : 10.05.2021
DESCRIPTION     : Write a script to read 'n' and generate Fibonacci numbers <= n
INPUT           : ./09_fibanocci.sh 
		  Enter the limit for fib series  :34
OUTPUT          : 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 

Documentation

#!/bin/bash

read -p "Enter the limit for fib series  :" n
check='^[0-9]+$'		#check if one numbers
check1='^[+-]?[0-9]?+$'		#check for positve and negative integers

if ! [[ $n =~ $check ]]		#enters when condition of only numbers fail (i.e 'n' contains characters)
then
    if [[ $n =~ $check1 ]]	#enter even if negative values are present
    then
    	if [ $n -lt 0 ]		#if value less then 0. i.e negative numbers --> print error msg and exit
	then
    	    echo "Please enter only positive numbers"
    	    exit
	fi
    fi  
    echo "Please enter only number"
    exit
fi
first=0		#assign '0' as first and '1' as second
second=1
while [ $n -ge $first ]  	#while first less then limit'n'
do
    new=`expr $first + $second` #to get the next term
    echo -n "$first, "
    first=$second
    second=$new
done
echo
