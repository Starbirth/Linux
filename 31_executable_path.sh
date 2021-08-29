<<Documentation
NAME            : V.Karthikeyan
DATE            : 23.05.2021
DESCRIPTION     : For each directory in the "$PATH", display the number of executable files in that directory.
INPUT           : ./31_executable_path.sh 
OUTPUT          : 

Current dir: /usr/local/sbin
Current count: 0

Current dir: /usr/local/bin
Current count: 0

Current dir: /usr/sbin
Current count: 374

Current dir: /usr/bin
Current count: 1421

Current dir: /sbin
Current count: 374

Current dir: /bin
Current count: 1421

Current dir: /usr/games
Current count: 4

Current dir: /usr/local/games
Current count: 0

Current dir: /snap/bin
Current count: 5

Total_count=3599

Documentation


path=(`echo $PATH | tr ':' "\n"`)		#store $PATH contents in "path" array
total_cout=0				
for i in ${path[@]}				#for every element in path[@]
do
    cd 
    cd $i					#get to the path directory
    cur_count=0
    contents=(`ls`)				#get the path element directory contents
    for j in ${contents[@]}
    do
	if [ -x $j ]				#if the path is executable
	then	
	    cur_count=$((cur_count+1))		
	fi
    done
    total_count=$((total_count+cur_count))	#adding to total count 
    echo "Current dir: $i"
    echo "Current count: $cur_count"		#current directory count
    echo
done
echo "Total_count=$total_count"

