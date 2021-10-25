#!/bin/bash -x

# VARIABLE
lim=10

# FUNCTION
function calculateRandomNumber()
{
	randomCheck=$((RANDOM%900+100))
	echo $randomCheck
}

# TO FUNCTION CALL FOR RANDOM NUMBER AND STORE IN ARRAY
for (( i=0; i<$lim; i++ ))
{
	randomArray[$i]="$( calculateRandomNumber )"
}

# FUNCTION TO SORT ARRAY
function sortArray()
{
	for (( i=0; i<$lim; i++ ))
	{
		for (( j=0; j<$lim-1; j++ ))
		{
			if [ ${randomArray[j+1]} -lt ${randomArray[j]} ]
			then
				temp=${randomArray[j]}
				randomArray[j]=${randomArray[j+1]}
				randomArray[j+1]=$temp
			fi
		}
	}
      echo ${randomArray[@]}
}

# FUNCTION CALL FOR SORT ARRAY
sortArray ${randomArray[@]}

# PRINT SECOND MINIMUM AND MAXIMUM VALUE
echo secondMinimumValue=${randomArray[1]}
echo secondMaximumValue=${randomArray[8]}
