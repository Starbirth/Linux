<<Documentation
NAME            : V. Karthikeyan
DATE            : 15.05.2021
DESCRIPTION     : Write a script for generating random 8-character passwords including alpha_numeric characters.
INPUT           : /20_random_password.sh

OUTPUT		: Enter the number of passwords required 5
JMyEU3eD
gjXfYndq
,4<T;6:@
jt@ EWsV
B1!r4Iw9
 
`Documentation

#!/bin/bash
read -p "Enter the number of passwords required " n

for i in `seq $n`
do
    cat /dev/urandom | tr -cd [:print:] | head -c 8
   echo 
done
    echo

#The  character  special  files  /dev/random and /dev/urandom (present since Linux 1.3.30) provide an interface to the kernel's random number generator.

#c, -C, --complement-->use the complement of SET1

#-d, --delete--> delete characters in SET1, do not translate

#[:print:]--> all printable characters, including space
