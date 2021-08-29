<<Documentation
NAME            : V. Karthikeyan
DATE            : 11.05.2021
DESCRIPTION     : Write a script to print chess board.
INPUT           : ./11_chess_board.sh

Documentation

#!/bin/bash
n=8 #To print 8x8 chess board
for i in `seq $n`
do
    for j in `seq $n`
    do
	sum=$((i+j))			
	check=$((sum%2))
	if [ $check -eq 0 ]
	then
	    echo -e -n "\e[47m" " "  	#for printing white boxes 
	else
	    echo -e -n "\e[40m" " "	#for printing black boxes
	fi
    done
    echo
done
echo -e -n "\e[0m" " "			#for printing a normal line
