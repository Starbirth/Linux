<<Documentation
NAME         : V.Karthikeyan
DATE         : 15.05.2021
DESCRIPTION  : To print the 5th line of a file passes through command line
INPUT        : ./23_print_fifth_line.sh file.txt 
OUTPUT       : line number 5

Documentation

#!/bin/bash

if [ $# -lt 1 ]			#if no arguments are passed, print error msg and exit
then
    echo "Please pass the file name in command line"
    exit
fi

if [ -f $1 -o -e $1 ]		#enter if file exist
then
    lines=`cat $1 |wc -l`
    if [ $lines -lt 5 ]		#if number of lines less than 5, print error msg and exit
    then
	echo "Error :$1 having only $lines lines. So can't print 5th line."
	exit
    fi
    echo -n "Fifth line of $1 is :"
    cat $1 | head -5 | tail -1
else			 	#If file not exist, print error msg and error
    echo "NO such a file"
    exit
fi

