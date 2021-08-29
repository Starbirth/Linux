<<Documentation
NAME            : V. Karthikeyan
DATE            : 09.05.2021
DESCRIPTION     : Write a script to compare larger integer values from a 'n' number of arguments using command line arguments
INPUT           : /05_largest.sh 54 85 24 215 244
OUTPUT          : Largest value is 244

Documentation

#!/bin/bash
if [ $# -eq 0 ] 	# if no argument is passed --> print error msg and exit
then
    echo "No arguments passed"
    exit
fi

large=$1		#assign $1 as large outside the loop
size=$#			#size indicates the number of inputs
for i in $@ 		#for values in $@
do
    if [ $i -gt $large ]	#if large less then $i
    then			
	large=$i		
    fi
done
echo "Largest value is $large"	#print the large value
