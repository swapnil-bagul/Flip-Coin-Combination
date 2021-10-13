#!/bin/bash -x
#flipping a coin 

result=$((RANDOM%2))
if [ $result == 1 ]
then
echo "Heads"
else
echo "Tails"
fi
