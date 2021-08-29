<<Documentation
Name 		: V. Karthikeyan
Date 		: 09.04.2021
Description 	: Read 'n' and generate a pattern given
Input 		: ./01_pattern.sh
		  ENTER THE NUMBER :4
Output:
1 
1 2 
1 2 3 
1 2 3 4 

Documentation


#!/bin/bash

read -p "ENTER THE NUMBER :" num #num is the limit of the pattern
limit=$(( 2**5 ))
if [ $num -le 2 -o  $num -ge $limit ]  #if num is less then zero (or) num is greater than limit(2^5) -->exit
then
    echo "NUMBER OUT OF RANGE, PLEASE ENTER 2 < NUMBER < 2^5"
    exit
fi

for i in `seq $num`
do
    for j in `seq $i`
    do
	echo -n "$j " # print the value of j
    done
   echo 
done

