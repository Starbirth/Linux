<<Documentation
Name            : V. Karthikeyan
Date            : 20.05.2021
Description     : Display the names of any file-system which have less than 10% free space available
INPUT		: ./29_free_space.sh 
OUTPUT		:
Filesystem udev tmpfs /dev/sda4 tmpfs tmpfs tmpfs /dev/loop1 /dev/loop0 /dev/loop3 /dev/loop5 /dev/loop6 /dev/loop7 /dev/loop2 /dev/loop4 /dev/loop8 /dev/loop10 /dev/loop9 /dev/loop11 /dev/nvme0n1p1 tmpfs tmpfs
Filesystem /dev/loop1 have less then 10% free space
Filesystem /dev/loop0 have less then 10% free space
Filesystem /dev/loop3 have less then 10% free space
Filesystem /dev/loop5 have less then 10% free space
Filesystem /dev/loop6 have less then 10% free space
Filesystem /dev/loop7 have less then 10% free space
Filesystem /dev/loop2 have less then 10% free space
Filesystem /dev/loop4 have less then 10% free space
Filesystem /dev/loop8 have less then 10% free space
Filesystem /dev/loop10 have less then 10% free space
Filesystem /dev/loop9 have less then 10% free space
Filesystem /dev/loop11 have less then 10% free space


Documentation

#!/bin/bash

fs=(`df | tr -s " " | cut -d " " -f 1`)				#file system name is asssigned to the array "fs"
used=(`df | tr -s " " | cut -d " " -f 5 | cut -d "%" -f 1`)	#used percent is assigned to the array "used"
echo ${fs[*]}
len=$((${#fs[@]}-1))
#df
for i in `seq $len`						#for len of the array
do
    output=$((100-${used[i]}))					#changes used to useful space
    if [ $output -le 10 ]					#check if space is less than 10%
    then
	echo "Filesystem ${fs[i]} have less then 10% free space"	#output 
    fi
done

