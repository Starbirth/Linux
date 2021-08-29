<<Documentation
NAME            : V.Karthikeyan
DATE            : 23.05.2021
DESCRIPTION     : Write a script to locks down file permissions for a particular directory.
INPUT           :./28_lock_permission.sh test/
OUTPUT:
Before locking
total 0
-rw-rwxrwx 1 karthi karthi 0 May 23 13:28 f1.sh
-rw-rwxrwx 1 karthi karthi 0 May 23 13:28 f2.sh
-rw-rwxrwx 1 karthi karthi 0 May 23 13:28 f3.sh
After locking
total 0
-rw------- 1 karthi karthi 0 May 23 13:28 f1.sh
-rw------- 1 karthi karthi 0 May 23 13:28 f2.sh
-rw------- 1 karthi karthi 0 May 23 13:28 f3.sh

Documentation

if [ $# -eq 0 ]				#if directory not passed in command line
then
    echo "Please pass the directory in command line"
else
    cd					#get to the home directory
    if [ -d $1 ]			#if directory is present
    then

    	echo "Before locking"
	ls -l $1/			#list the contents with access in $1
	chmod -R go-r $1/		#remove read access from group and others
	chmod -R go-w $1/		#remove write access "" ""
	chmod -R go-x $1/		#remove execute access "" ""
	echo "After locking"
	ls -l $1/			#list the contents with access in $1
    else
	echo "Directory not found"
    fi
fi


