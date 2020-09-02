#!/bin/bash -x
flip=1
heads=0
tails=0
#function flipCoin() {
#	flipCheck=$(( RANDOM%2 ))
#	echo $flipCheck
#}
while [ $flip -le 15 ]
do
	result=$((RANDOM%2))
	#result="$(flipCoin)"
	case $result in
		1)
		  echo "Heads"$heads
		  ((heads++))
		  ;;
		*)
		  echo "tails"$tails
		  ((tails++))
		;;
	esac
	((flip++))
done
 echo "Heads=$heads, Tails=$tails"
