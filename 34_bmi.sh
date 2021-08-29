<<Documentation
NAME		: V.Karthikeyan
DATE		: 13.05.2021
DESCRIPTION	: Write a program to calculate the BMI
INPUT		: ./34_bmi.sh 
		  Enter the weight in Kg: 80
		  Enter the height in meters: 1.8
OUTPUT		: You are Normal

Documentation

read -p "Enter the weight in Kg: " weight
read -p "Enter the height in meters: " height


check='^[+-]?[0-9]?[.]?+[0-9]+$'         			#check for positve and negative integers

if ! [[ $weight =~ $check ]]         		#enters when condition of only positive and negative numbers fail (i.e 'weight' contains characters)
then
    echo "Please enter only numbers"
    exit
fi
if ! [[ $height =~ $check ]]      		#enters when condition of only positive and negative numbers fail (i.e 'height' contains characters)
then
    echo "Please enter only numbers"
    exit
fi


check_weight=`echo "$weight > 0" |bc`		#check if only positive numbers are entered (if negative is given "1" is stored"
check_height=`echo "$height > 0" |bc`

if [ $check_weight -eq 0 -o $check_height -eq 0 ]	#check for negative inputs , if negative input is given error msg is printed and exit
then
    echo "Please enter only positive values"
    exit
fi

den=`echo "scale=2; $height * $height" | bc`		#calulation of denominator as per formula
bmi=`echo "scale=1; $weight / $den " |bc`	

under_weight=`echo "$bmi < 18.5 " | bc`			#if bmi less than 18.5 "1" is stored in under_weight
normal=`echo "$bmi >= 18.5 && $bmi <=24.9" |bc`		#if bmi between 18.5 abd 25 "1" is stored in normal
over_weight=`echo "$bmi >= 25 && $bmi<=29.9" |bc`	#if bmi is between 24.9 and 30 "1" is stored in over_weight
obese=`echo "$bmi >=30" |bc`				#if bmi is greater than 29.9 "1" is stored in obese

if [[ $under_weight -eq 1 ]]
then
    echo "You are Underweight"
elif [[ $normal -eq 1 ]]
then
    echo "You are Normal"
elif [[ $over_weight -eq 1 ]]
then
    echo "You are Overweight"
elif [[ $obese -eq 1 ]]
then
    echo "You are Obese"
fi
