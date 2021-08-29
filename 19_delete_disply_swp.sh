<<Documentation
NAME            : V.Karthikeyan
DATE            : 23.05.2021
DESCRIPTION     : Write a script to delete all the .swp files found in your system or directory.
INPUT           : ./19_delete_disply_swp.sh ECEP
OUTPUT		: ECEP/LS/2.swp
		  ECEP/LS/1.swp

Documentation
#!/bin/bash

if [ $# -eq 0 ]			#if no argument is passed it checks from home directory
then
    no_of_swp=`find ~ -name "*.swp" |wc -l`   #no of swp files present
   if [ $no_of_swp -eq 0 ]
   then
       echo "No swp file are present"
   else
       find ~ -name "*.swp" 			#print the directory of files
       find ~ -name "*.swp" -delete		#delete files
   fi
   
elif [ $# == 1 ]
then
    cd
    if [ -d $1 ]
    then
    	no_of_swp=`find $1 -name "*swp" |wc -l`		#in the files in $1 directory
	if [ $no_of_swp -eq 0 ]
	then
	    echo "No swp file are present"
	else
	    find $1 -name "*swp"
	    find $1 -name "*swp" -delete
	fi
    else
	echo "Directory not present"
    fi
fi


