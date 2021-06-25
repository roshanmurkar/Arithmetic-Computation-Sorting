


  
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
