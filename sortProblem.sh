#!/bin/bash -x

echo "welcome to arithmetic computation and sorting program"

#uc1-get input

read -p "enter a 1st value:- " a
read -p "enter a 2nd value:- " b
read -p "enter a 3rd value:- " c

echo $a,$b,$c

#uc2-computation

resultUc2=$(($a+$b*$c))

echo $result


#uc3-computation part 2

resultUc3=$(($a*$b+$c));
echo $result


#uc4-computation part 3

resultUc4=$(($c*$a/$b));
echo $result



#uc5-computation part 4

resultUc5=$(($a%$b+$c));
echo $result

#uc6-store in dictionary
declare -A result
result[resultUc2]=$resultUc2
result[resultUc3]=$resultUc3
result[resultUc4]=$resultUc4
result[resultUc5]=$resultUc5

echo "result" ${result[@]}


