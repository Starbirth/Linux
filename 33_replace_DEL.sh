<<Documentation
NAME		: V.Karthikeyan
DATE		: 24.05.2021
DESCRIPTION	: Write a script to replace 20% lines in a C file randomly and replace it with the pattern <---DEL--->
INPUT		: ./33_replace_DEL.sh main.c
OUTPUT		:
Before replacing:
#include<stdio.h>
int main()
{
    printf("Hello World\n");
}
//line-6
//line-7
//line-8
//line-9
//line-10
//line-11
//line-12

no_of_lines present=13
no of lines to be replaced: 2

After replacing:
#include<stdio.h>
int main()
{
    printf("Hello World\n");
}
//line-6
//line-7
//line-8
//line-9
<-----DELETED----->
//line-11
<-----DELETED----->
Documentation

#!/bin/bash
if [ $# -eq 0 ]			#if no argument passed, print the error msg and exit		
then
    echo "Please pass the file name through command line"
    exit
elif ! [ -e $1 -o -f $1 ]	#if the file not exists, print the error msg and exit
then
    echo "No such a file exists"
    exit
elif ! [ -s $1 ]		#if the file is empty, print the error msf and exit
then
    echo "$1 is empty file.So can't replace the string"
    exit
fi

nol=`cat $1 |wc -l`		#no of lines in the file
percent=`echo "$(($nol*1/5))"`	#20% of lines
if [ $percent -ge 1 ]		#if lines to be modified greater than 1
then
    print=(`shuf -n $percent -i 1-$nol`)	#takes $percent random numbers from (1 to number of lines) 
    echo "Before replacing:"
    cat $1					#print the contents of file
    echo "no_of_lines present=$nol"		
    echo "no of lines to be replaced: $percent"
    for i in ${print[@]}			#for the elements of array print
    do
	sed -i $i's/^[[:print:]]*/<-----DELETED----->/' $1	#replace the line contents
    done
    echo -e "\nAfter replacing:"
    cat $1
else
    echo "$1 having $nol lines,Not having the required  minimum number of lines -5"	#if lines less than 5, print error msg and exit
    exit
fi
