<<Documentation
NAME          	: V. Karthikeyan
DATE         	: 12.05.2021
DESCRIPTION  	: Write a script to sort a given number in ascending or descending order.
INPUT        	: bash 12_sorting.sh -d 1 2 3 4 5 6 9 8
OUTPU	     	: Descending order of array is 9  8  6  5  4  3  2  1 
Documentation

#!/bin/bash

if [ $# -eq 0 ]		#if no argument is passed print the error msg and exit
then
    echo "Please pass the choice"
    exit
fi

arr=($@)		#assign the arguments into array 'arr'
len=${#arr[*]}		#length of the array
opt=${arr[0]}		#the option ascending "-a" or descending "-d" 

case $opt in
    -a)
	for i in `seq 1 $len`				# "1 $len" to start from numbers leaving opt value
	do
	    for j in `seq $i $len`			
	    do
		if [[ ${arr[i]} -gt ${arr[j]} ]] 	#if arr[i] > arr[j] , swap them
		then
		    temp=${arr[$i]}
		    arr[$i]=${arr[$j]}
		    arr[$j]=$temp
		fi
	    done
	done
	
	echo -n "Ascending order of array is "
	for i in `seq 1 $len`
	do
	echo -n "${arr[$i]} " 
        done
	echo
	;;

    -d)
	for i in `seq 1 $len`
	do
	    for j in `seq $i $len`
	    do
		if [[ ${arr[i]} -lt ${arr[j]} ]]	#if arr[i] < arr[j] ,swap them
		then
		    temp=${arr[$i]}
		    arr[$i]=${arr[$j]}
		    arr[$j]=$temp
		fi
	    done
	done
	
	echo -n "Descending order of array is "
	for i in `seq 1 $len`
	do
	echo -n "${arr[$i]} " 
        done
	echo
	;;

    esac
