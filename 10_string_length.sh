<<Documentation
NAME            : V. Karthikeyan
DATE            : 10.05.2021
DESCRIPTION     : Write a script to print the length of each and every string using arrays
INPUT           : ./10_string_length.sh hello how are you ?                  

OUTPUT          : Length of String (hello) - 5
		  Length of String (how) - 3
		  Length of String (are) - 3
		  Length of String (you) - 3
		  Length of String (?) - 1
 
Documentation

#!/bin/bash
arr=($@)  		#assign the command line arguments to an array
len=$#			#no. of arguments
if [ $len -eq 0 ]	#if no arguments passed, error msg is printed and exit
then
    echo "Please pass the arguments through command-line"
fi
for i in `seq 0 $((len-1))`	#as the array starts from 0 --> limit is (len-1)
do  
    echo "Length of String (${arr[i]}) - ${#arr[i]}"
done
