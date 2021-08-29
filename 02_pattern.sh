<<Documentation
Name 		: V. Karthikeyan
Date 		: 09.04.2021
Description 	: Read 'n' and generate a pattern given
Input 		:./02_pattern.sh
		 ENTER THE NUMBER :4

Output:
1 
2 3 
4 5 6 
7 8 9 10 

Documentation

#!/bin/bash

read -p "ENTER THE NUMBER :" num
limit=$(( 2**5 )) #limit as 32
if [ $num -le 2 -o $num -ge $limit ]
then
    echo "NUMBER OUT OF RANGE, PLEASE ENTER 2 < NUMBER < 2^5"
    exit   # if num<=2 or num>=32 --> exit
fi
print_num=1 # print the first character as 1 and then do the program
for i in `seq $num`
do
    for j in `seq $i`
    do
	echo -n "$print_num "
	print_num=`expr $print_num + 1` #increase the value of num by 1 
    done
   echo 
done

