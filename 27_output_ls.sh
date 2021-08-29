<<Documentation
NAME		: V.Karthikeyan
DATE		: 21.05.2021
DESCRIPTION	: Write a script that takes any number of directories as command-line arguments and then lists the contents of each of these directories.
INPUT		: ./27_output_ls.sh ~/ECEP
OUTPUT		: /home/karthi/ECEP
		  C DS LS MC
Documentation

if [ $# -eq 0 ]		#if command line argument length is 0
then
    echo *		#print the contents of current working  directory
    exit
else	
    for i in $@		#every element passed through command line
    do
	if [ -e $i -a -d $i ]	
	then
	    cd $i 	#get to the $i directory
	    pwd
	    echo *	#print the contents of current directory
	    echo
       	else
    	    echo "$0 : Cannot access '$i' : No such a file or directory."
    	    echo
	fi
    done
fi
