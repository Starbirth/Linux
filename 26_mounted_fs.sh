<<Documentation
Name            : V. Karthikeyan
Date            : 20.05.2021
Description     : Write a script to determine whether a given file system or mount point is
mounted.
INPUT		: ./26_mounted_fs.sh /dev/sda4
OUTPUT		: Filesystem /dev/sda4 is mounted on / and it is having 26% used space with 61641060 KB free

Documentation

#!/bin/bash
if [ $# -eq 0 ]				#if no argument in passed in CL, then print the error msg and exit
then
    echo "Error: Please pass the name of the file-system through command line."
    exit
fi

fs=(`df | tr -s " " | cut -d " " -f 1`)		#file system name is asssigned to the array "fs"
used=(`df | tr -s " " | cut -d " " -f 5`)	#used percent is assigned to the array "used"
avail=(`df | tr -s " " | cut -d " " -f 4`)	#available space is asssigned to the array "avail"
mount=(`df | tr -s " " | cut -d " " -f 6`)	#mounted directory is stored in the array "mount"

op=0

for i in `seq ${#fs[@]}`			#for length of the array fs
do
    if [ "$1" == "${fs[i]}" ]			#is command line argument is found in "fs" array, store the position value in op
    then
	op=$i
    fi
done

if [ $op -eq 0 ]
then
    echo "$1 is not mounted"			#if op is same as assigned value before loop
else
    echo "Filesystem ${fs[op]} is mounted on ${mount[op]} and it is having ${used[op]} used space with ${avail[op]} KB free"	#output 
fi


