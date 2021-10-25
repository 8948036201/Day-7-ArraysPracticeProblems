#!/bin/bash -x

echo "print the 10 random number"
for (( i=0; i<=10; i++))
do
array[i]=$((RANDOM%900+100))
done
#print the array of value
echo ${array[@]}

#Declear the variable max and second max
max=$((array[0]))
secondMax=$((array[0]))

	for (( i=0; i<=10; i++ ))
	do
        	if [ $((array[i])) -gt $max ]
        	then
        	secondMax=$max
        	max=$((array[i]))
        elif [ $((array[i])) -gt $secondMax -a $((array[i])) -lt $max  ]
        then
        	secondMax=$((array[i]))
        fi
done

#To print maximum and second maximum number
echo "maximum number is : " $max
echo "second maximum number is : " $secondMax

#To variable min and secondMin
min=$((array[0]))
secondMin=$((array[0]))
	for (( i=0; i<=10; i++ ))
	do
        	if [ $((array[i])) -lt $min ]
        	then
        	secondMin=$min
        	min=$((array[i]))
        	elif [ $((array[i])) -lt $secondMin -a $((array[i])) -gt $min  ]
        	then
        	secondMin=$((array[i]))
        	fi
	done
#To print the minimum number and second minimum number
echo "minimum number is : " $min
echo "second minimum number is : " $secondMin
