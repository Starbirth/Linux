<<Documentation
NAME            : V. Karthikeyan
DATE            : 15.05.2021
DESCRIPTION     : Provide a menu for user about what information he wants to check and prints the information of what user wants

INPUT           : ./13_system_info.sh 
1.Currently logged users
2.Your Shell Directory
3.Home Directory
4.OS Name & Version
5.Current working Directory
6.Number of used logged in
7.To show all available shells in this system
8.Hard disk information
9.CPU information
10.Memory information
11.File system information
12.Currently running process
Enter the choice :4

OUTPUT : OS Name & Directory :
Linux
5.8.0-53-generic

Do you want to continue (y/n)?n

You have entered a character other then y, So ending the operation

Documentation

#!/bin/bash

function system_info ()
{
    echo "1.Currently logged users
2.Your Shell Directory
3.Home Directory
4.OS Name & Version
5.Current working Directory
6.Number of used logged in
7.To show all available shells in this system
8.Hard disk information
9.CPU information
10.Memory information
11.File system information
12.Currently running process"

read -p "Enter the choice :" n
echo
case $n in 
    1)
	echo -n "Currently logged users :"
	whoami						#whoami prints the current user			
	;;
    2)
	echo -n "Your Shell Directory is :"
	echo $SHELL					# $SHELL prints the shell directory
	;;
    3)
	echo -n "Home Directory is :"
	echo $HOME					# $HOME prints the home directory
	;;
    4)
	echo "OS Name & Directory :"
	uname						#uname prints the OS NAME
	uname -r					#uname -r prints the version name
	;;
    5)
	echo "Current Working Directory is :"		
	pwd						#pwd prints the present working directory
	;;
    6)
	echo "Number of users logged in system: "
	w						#w prints the number of users logged in system
	;;
    7)
	echo "All available shells in this system are :"
	cat /etc/shells					#prints the available shells in the shells
	;;
    8)
	echo "Hard disk information :"
	df -h						#prints the disk information in human language
	;;
    9)
	echo "CPU information :"
	cat /proc/cpuinfo				#cpu information
	;;
    10)
	echo "Memory information :"
	cat /proc/meminfo				#memory information
	;;
    11)
	echo "File system informations :"
	cat proc/filesystems				#file system information
	;;
    12)
	echo "Currently running process :"
	ps						#running process
	;;
    *)
	echo "Invalid option, Please enter a valid option"
	;;

esac
}
option="y"
while [ $option == y ]
do
    system_info   		#executes the function system_info
    echo
    read -p "Do you want to continue (y/n)?" option 	#asks the user to continue or nor
    echo
done
echo "You have entered a character other then y, So ending the operation"
