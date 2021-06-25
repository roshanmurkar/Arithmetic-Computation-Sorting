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
