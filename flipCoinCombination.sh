#!/bin/bash -x


isHead=0;
isTail=1;
flipCheck=$((RANDOM%2))

case $flipCheck in
	$isHead)
		result=Heads
		;;
	$isTail)
		result=Tails
		;;
esac
echo $result "is the winner"


declear -A flipValue
isFlip=0;
isHead=0;
isTail=1;
a=0;
b=0;
read -p "Enter how many times you want to flip the coin : " flipCoinTimes

while  [[ isFlip -lt flipCoinTimes ]]
do
	flipCoin=$(( RANDOM%2 ))
	case $flipCoin in
        	$isHead)
                	result=Heads
			((a++))
                	;;
        	$isTail)
                	result=Tails
			((b++))
                	;;
	esac
	flipValue[$result]=$flipCoin
	echo $result
	isFlip=$(( $isFlip + 1 ))
done

echo "${!flipValue[@]}"
echo "Heads win $a Times"
echo "Tails win $b Times"
