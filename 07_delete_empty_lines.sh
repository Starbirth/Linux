<<Documentation
NAME            : V. Karthikeyan
DATE            : 10.05.2021
DESCRIPTION     : Write a script to delete empty lines from a file
INPUT           : ./07_delete_empty_lines.sh file.txt
OUTPUT          : Empty lines are deleted

Documentation

#!/bin/bash
file=$@
if [ $# -eq 0 ]			#if no arguments passed--> print the error msg and exit
then
    echo "Please pass the file name through command line"
    exit
fi

sed -i '/^karthi*$/d' $@  	#delete the blank lines
echo "Empty lines are deleted"
