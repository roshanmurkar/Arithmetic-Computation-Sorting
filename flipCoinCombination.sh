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
                ;;
esac
echo $result "is the winner"
