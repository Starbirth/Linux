<<Documentation
NAME            : V. Karthikeyan
DATE            : 10.05.2021
DESCRIPTION     : Write a script to perform arithmetic operation on digits of a given number depending upon the operator.
INPUT           : ./08_operator_dependent.sh 5458x
OUTPUT		: MUl is 800


Documentation

#!/bin/bash

if [ $# -eq 0 ]		#if no arguments passed, error msg printed and exit
then
    echo "Please pass the argument"
    exit
fi
arg=($@)		#assign the arguments to array "arr"
len=${#arg}		#length of arguments
ans=${arg:0:1}		#assign first option to ans

case ${arg:(($len-1)):1} in		#case in the last character (as array starts from 0, last character-->(len-1))
    +) for i in `seq $((len-2))`	
    do
	a=${arg:$i:1}
	ans=$(($ans+$a))
    done
    echo "Sum is $ans"
    ;;
-) for i in `seq $((len-2))`
do
    a=${arg:$i:1}
    ans=$(($ans-$a))
done
echo "Sub is $ans"
;;

x) for i in `seq $((len-2))`
do
    a=${arg:$i:1}
    ans=$(($ans*$a))
done
echo "MUl is $ans"
;;

/) for i in `seq $((len-2))`
do
    a=${arg:$i:1}
    ans=`echo "scale=2; $ans / $a" | bc`
done
echo "MUl is $ans"
;;
*) echo "Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)"  	#if no operator is given at the end, error msg is printed and exit
    ;;
esac
