<<Documentation
NAME         	: V.Karthikeyan
DATE         	: 15.05.2021
DESCRIPTION  	: Script to search a user present in your system
INPUT        	: ./32_user_present.sh root
OUTPUT		:  root is present 

Documentation

#!/bin/bash

array=($(cat /etc/passwd | cut -d ":" -f 1))			#user name is taken from etc/passwd
total=${#array[@]}						#length of array

if [ $# = 0 ]							#If no arguments passed, print the error msg and exit
then
    echo "Please pass the argument through command line"
    exit
fi
check=0
for i in `seq 0 $(($total-1))`
do
    if [[ $1  == "${array[i]}" ]]				#COMPARING TWO STRINGS ( GIVEN INPUT THROUGH CMD LINE ARG VS ALL ARRAY ELEMENTS )
    then
	echo "$1 is present "					#PRINTING THWE GIVEN ELEMENT IS PRESENT OR NOT
    else
	check=$((check+1))
    fi
done

if [ $check -eq $total ]					#Checking count value, if it is equal to length of array the user not present 
then
    echo "$1 not present"
fi
