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


isHH=0;
isHT=1;
isTH=2;
isTT=3;
flipCheck=$((RANDOM%4))

case $flipCheck in
	$isHH)
		result=HH
		;;
	$isHT)
		result=HT
		;;
        $isTH)
                result=TH
                ;;
        $isTT)
                result=TT


  
isHHH=0;
isHHT=1;
isHTH=2;
isHTT=3;
isTHH=4;
isTHT=5;
isTTH=6;
isTTT=7;

flipCheck=$((RANDOM%8))

case $flipCheck in
	$isHHH)
		result=HHH
		;;
	$isHHT)
		result=HHT
		;;
        $isHTH)
                result=HTH
                ;;
        $isHTT)
                result=HTT
                ;;
        $isTHH)
                result=THH
                ;;
        $isTHT)
                result=THT
                ;;
        $isTTH)
                result=TTH
                ;;
        $isTTT)
                result=TTT
                ;;
esac
echo $result "is the winner"
