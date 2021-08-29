<<Documentation
NAME            : V. Karthikeyan
DATE            : 15.05.2021
DESCRIPTION     : Write script called say_hello, which will print greetings based on time
INPUT           : vi ~/.bashrc--> bash ECEP/LS/ASSIGN/21_say_hello.sh
OUTPUT          : (when terminal opens)
		  Good Evening karthi, Have a nice day!
		  It is Sat 15 in May of 2021 (07:23:34 PM) 
Documentation

#!/bin/bash
time=`date |cut -d " " -f 5 |cut -d ":" -f 1`		#to take the hour 
AP=`date |cut -d " " -f 6`				#to take AM and PM

if [ $AP == AM ]
then
    if [ $time -ge 5 -a $time -le 11 ]			#5AM TO 11:59AM --->Good Morning
    then 
	echo "Good Morning $USER, Have a nice day!"
    elif [ $time -eq 12 -o  $time -ge 1 -a $time -le 4 ]#12AM TO 4:59AM --->Good Night
    then 
	echo "Good Night $USER, Have a nice day!"
    fi
elif [ $AP == PM ]
then
    if [ $time -eq 12 -o $time -eq 1 ]			#12PM TO 1:59PM --->Good Noon
    then
	echo "Good Noon $USER, Have a nice day!"
    elif [ $time -ge 2 -a $time -le 4 ]			#2PM TO 4.59PM --->Good Afternoon
    then
	echo "Good Afternoon $USER, Have a nice day!"
    elif [ $time -ge 5 -a $time -le 8 ]			#5PM TO 8.59PM --->Good Evening
    then
	echo "Good Evening $USER, Have a nice day!"
    elif [ $time -ge 9 -a $time -le 11 ]		#9PM TO 11.59PM --->Good Night
    then
	echo "Good Night $USER, Have a nice day!"
    fi
fi

echo "It is `date +%a` `date +%e` in `date +%B` of `date +%Y` (`date +%r`)"

#date +%a --> weekday
#date +%e --> date of month
#date +%B --> Month of year
#date +%Y --> Year 
#date +%r --> date(hh:mm:ss AM/PM)

