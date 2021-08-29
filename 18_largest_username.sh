<<Documentation
NAME            : V. Karthikeyan
DATE            : 15.05.2021
DESCRIPTION     : Display the longest and shortest user-names on the system.
INPUT           : ./18_largest_username.sh
OUTPU		: The Longest Name is  : gnome-initial-setup
		  The Shortest Name is : lp
 
Documentation

#!/bin/bash

arr=(`cut -d ":" -f 1 /etc/passwd`)		#store the usernames in the system in the array "arr"
len=${#arr[@]}					#store the length of the array "arr"
s_size=${#arr[0]}				#initialise the values
small=${arr[0]}
l_size=${#arr[0]}
large=${arr[0]}

for i in `seq $((len-1))`
do
    if [ ${#arr[i]} -gt $l_size ] 		#size of arr[i] element greater than previous large element-->store arr[i] as large
    then
	l_size=${#arr[i]}
	large=${arr[i]}
    fi
    
    if [ ${#arr[i]} -lt $s_size ]		#size of arr[i] element less than previous small element-->store arr[i] as small
    then
	s_size=${#arr[i]}
	small=${arr[i]}
    fi

done
echo "The Longest Name is  : $large"
echo "The Shortest Name is : $small"
