<<Documentation
Name            : V. Karthikeyan
Date            : 09.04.2021
Description     : Write a script for addition of two numbers for real numbers also
Input           : ./03_real_add.sh 
		  Enter the numbers to addition
		  10.65 10.25
Output		: sum is 20.90

Documentation

#!/bin/bash
echo "Enter the numbers to addition" 
read num1 num2 				#read two numbers in one line
check='^[+-]?[0-9]?+[.]?[0-9]+$' 	#to check if the numbers dont contain anything besides numbers and decimals
if [[ $num1 =~ $check ]] 		#if num1 is valid enter 
then
    if [[ $num2 =~ $check ]] 		#if num2 is valid enter
    then
	sum=`echo "$num1 + $num2" |bc` #sum of two numbers 
        echo "sum is $sum"
    else
	echo "Please enter only integers or real numbers"
	exit 				# if num2 is not valid exit
    fi
else
    echo "Please enter only integers or real numbers" 
    exit				 # if num1 is not valid exit
fi

  
