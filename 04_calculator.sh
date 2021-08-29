<<Documentation
NAME		: V. Karthikeyan
DATE		: 09.05.2021
DESCRIPTION	: Write a script for arithmetic calculator using command line arguments
INPUT		: ./04_calculator.sh 54 / 69
OUTPUT		: 54 / 69 = .78

Documentation

#!/bin/bash
if [ $# -eq 0 ]		#if no arguments passed -->exit
then
    echo "Please pass the arguments through command line"
    exit
fi
if [ $# -lt 3 ]		#if less then three arguments passed -->exit
then
    echo "Please pass 3 arguments"
    exit
fi
case $2 in		#check the operator in $2
    +)ans=`expr $1 + $3		#addition
	echo "$@ = $ans"
	;;
    -)ans=`expr $1 - $3`	#subtraction
	echo "$@ = $ans"
	;;
    x)ans=$(($1*$3))		#multiplication
	echo "$@ = $ans"
	;;
    /)ans=`echo "scale=2 ; (($1/$3))" | bc`	#division
	echo "$@ = $ans"
	;;
    *)echo "Please enter a valid operator"	#aside from four operator -->error message
	;;
esac
