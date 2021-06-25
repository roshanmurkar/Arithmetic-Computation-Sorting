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



#uc2-multiple times flipping coin

declear -A flipValue
isFlip=0;
isHead=0;
isTail=1;
H=0;
T=0;
#read -p "Enter how many times you want to flip the coin : " flipCoinTimes
flipCoinTimes=42;
while  [[ isFlip -lt flipCoinTimes ]]
do
	flipCoin=$(( RANDOM%2 ))
	case $flipCoin in
        	$isHead)
                	result=Heads
			((H++))
                	;;
        	$isTail)
                	result=Tails
			((T++))
                	;;
	esac
	flipValue[$result]=$flipCoin
	echo $result
	isFlip=$(( $isFlip + 1 ))
done

echo "${flipValue[@]}"
echo "Heads win $H Times"
echo "Tails win $T Times"

#uc3-

if [ $H -ge $T ]
then
	echo " Head is win with $H Times "
elif [ $H -eq $T ]
then
	echo " Tie between Head and Tail"
else
	echo " Tail is win with $T Times "
fi


