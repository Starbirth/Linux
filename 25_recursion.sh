<<Documentation
Name            : V. Karthikeyan
Date            : 20.04.2021
Description     : Use a recursive function to print each argument passed to the function.
Input           : ./25_recursion.sh hai hello how are you doing?
OUTPUT		: hai
		  hello
		  how
		  are
		  you
		  doing?

Documentation


#!/bin/bash
i=0

function arg() 			#function to print the arguments passed
{
    if [ $i -lt ${#arr[@]} ]
    then
	echo ${arr[i]}
	i=$(($i+1))
	arg			#recursive function call
    else
	exit
    fi

}
if [ $# == 0 ]			#if no argument is passed in command line, print error msg and exit
then
    echo "Pass the arguments through command line."
    exit
fi
arr=($@)			#assign command line arguments to array
arg 				#function call
