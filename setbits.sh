#!/bin/bash

ARRAY=(0 0 0 0)
i=0
num=$1
while [[ $num -gt 0 ]];
 do
	ARRAY[$i]=$(($num % 2))
	((num = num / 2))
	((i++))
		
done

for i in ${ARRAY[@]};
 do echo $i; 
gpio write 0 ${ARRAY[3]}
gpio write 1 ${ARRAY[2]}
gpio write 2 ${ARRAY[1]}
gpio write 3 ${ARRAY[0]}

done
