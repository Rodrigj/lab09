#!/bin/bash

counter=0

gpio mode 5 in
gpio mode 5 up

while [ $counter -le 4 ]
do
echo $counter
gpio mode $counter out
gpio write $counter 0
((counter++))

done

