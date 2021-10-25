#!/bin/bash -x

declare -a repeatedNumArray
countArray=0
for ((i=10 ; i < 100 ; i++ ))
do
    if [ $((i%10)) -eq   $(((i/10)%10)) ]
    then
        repeatedNumArray[((countArray++))]=$i
    fi

done

echo "Repeated number is ${repeatedNumArray[@]} ".











