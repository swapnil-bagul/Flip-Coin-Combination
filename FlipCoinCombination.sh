#!/bin/bash -x
#flipping a coin 
read -p "how many time flip the coin: " n

declare -a Singlet_Heads
declare -a Singlet_Tails

for ((x=1; x<=n; x++))

do

Result=$((RANDOM%2))

if [ $Result == 1 ]
then
echo "Heads"
Singlet_Heads[x]="Heads"
else
echo "Tails"
Singlet_Tails[x]="Tails"
fi

done

	totalheads=${#Singlet_Heads[@]}
	echo "Tails percentage is $(($totalheads*100/$n))% "
	totaltails=${#Singlet_Tails[@]}
        echo "Heads percentage is $(($totaltails*100/$n))% "


