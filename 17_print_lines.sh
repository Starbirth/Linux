<<Documentation
NAME            : V. Karthikeyan
DATE            : 15.05.2021
DESCRIPTION     : Write script to print contents of file from given line number to next given number of lines.
INPUT           : ./17_print_lines.sh 10 3 file.txt
OUTPUT		: line number 10
		  line number 11
		  line number 12
 
Documentation

#!/bin/bash

if [ $# -ne 3 ]				#if not three arguments passed, print the error msg and exit
then
    echo "error :arguments missing
usage :./file_filter.sh start_line upto_line filename"    
    exit
fi

if ! [ -f $3 -o -e $3 ]			#check for the file existence
then
	echo "Pass the correct file"
	exit
fi

min_lines=`expr $1 + $2 - 1` 		#minimum lines should be availale in the file to execute
file_lines=`cat $3 | wc -l`		#number of lines in the file


if [ $file_lines -lt $min_lines ]	#if file having less then minimum lines, print the error msg and exit
then
    echo "$3 is having only $file_lines lines, file should have atleast $min_lines"
    exit
fi
cat $3 |head -$1 |tail -$2		#to print $2 lines from $1


