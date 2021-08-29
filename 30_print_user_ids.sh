<<Documentation
NAME            : V.Karthikeyan
DATE            : 18.05.2021
DESCRIPTION     : Count the number of users with user IDs between the given range on the system
INPUT           : ./30_print_user_ids.sh 100 10000
OUTPUT		: Total count of user ID between 100 and 10000 is : 28

Documentation

#!/bin/bash

arr=(`cat /etc/passwd | cut -d ":" -f 3`)		#assign the user ids in the array
count=0
if [ $# -eq 0 ]						#if no argument is passed enters default operation
then
    len=${#arr[@]}					#length of array
    for i in `seq 0 $((len-1))`
    do
	if [ ${arr[i]} -gt 500 -a ${arr[i]} -lt 10000 ]	#if array element greater than 500 and less than 10000
	then
	    count=$(($count+1))
	fi
    done
    echo "Total count of user ID betwenn 500 to 10000 is : "$count
    exit
fi

if [ $# -lt 2 ]						#if only one argument is passed in CL
then
    echo "Pleae pass 2 arguments through CL"
    exit
elif [ $1 -ge $2 ]					#if first arguement is greater than second argument
then
    echo "Invalid range. Please enter the valid range through CL"
    exit
fi
len=${#arr[@]}						#length of array

for i in `seq 0 $((len-1))`
do
   if [ ${arr[i]} -gt $1 -a ${arr[i]} -lt $2 ]    	#value of array element greater than $1 and less than $2
   then
       count=$(($count+1))
   fi
done

echo "Total count of user ID between $1 and $2 is : $count"		#print the number of ID's in range
