#!/bin/bash

buttoncount=0

while true
do
./waitForButtonPress.sh
./setbits.sh "$buttoncount"
((buttoncount++))

if [ "$buttoncount" -eq 17 ]
then
gpio write 4 1
sleep 1 
gpio write 4 0
buttoncount=0
fi
done
