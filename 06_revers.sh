<<Documentation
NAME            : V. Karthikeyan
DATE            : 10.05.2021
DESCRIPTION     : Write a script to print a given number in reverse order.
INPUT           : ./06_revers.sh 145265
OUTPUT		: Reversed number - 562541 

Documentation

num=$@ 			#assigning the command line arguments to num
len=${#num}		#no of command line arguments
check='^[+-]?[0-9]?+[.]?[0-9]+$' 	#condition for real and integers
if [ $# -eq 0 ]				#if no arguments passed --> print error msg and exit
then
    echo "No argument passed"
    exit
elif [ $len -eq 1 ]			#if single digit numnber is passed--> print error msg and exit
then
    echo "pass a multi-digit number"
    exit
elif ! [[ $num =~ $check ]]		# if any letters or characters passed--> print error msg and exit
then
    echo "Enter only numbers"
    exit
fi
rev=0					# initialise rev=0
while [ $num -ne 0 ]			# while num not equal to zero
do
    rem=`expr $num % 10`		# to get the last digit
    rev=`expr $rev \* 10`		# move the present rev value to *10 position
    rev=`expr $rev + $rem`		# add the rem value to the rev 'tenth's position'
    num=`expr $num / 10`		# remove the last digit of the num
done
echo "Reversed number - $rev"		#print the reversed number 'rev'
