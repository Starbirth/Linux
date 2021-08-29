<<Documentation
NAME         	: V.Karthikeyan
DATE         	: 17.05.2021
DESCRIPTION  	: Shell script to convert string lower to upper and upper to lower
INPUT        	: ./22_upper_lower.sh file.txt

OUTPUT		: 
1-Lower to upper 
2-Upper to Lower
Please select option: 1
LINE NUMBER 1
LINE NUMBER 2
LINE NUMBER 3
LINE NUMBER 4
 
Documentation

if [ $# -eq 0 ]				#check if argument is passed through command line, else exit
then
    echo "Please pass the file name through command line"
    exit
elif ! [ -e $1 ]			#if file not exist, print error msg and exit
then
    echo "File is not exist"
    exit
elif ! [ -s $1 ]			#if file has no contents, print error msg and exit
then
    echo "No contents inside the file"
    exit
fi

echo -e "1-Lower to upper \n2-Upper to Lower"
read -p "Please select option: " n	#read option from user

case $n in 
    1)
	cat $1 | tr a-z A-Z		#lower case to upper case
	;;
    2)
	cat $1 | tr A-Z a-z		#upper case to lower case
	;;
    *)
	echo "Invalid choice"
	exit
esac


