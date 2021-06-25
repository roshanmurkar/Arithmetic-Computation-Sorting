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
result[1]=$resultUc2
result[2]=$resultUc3
result[3]=$resultUc4
result[4]=$resultUc5


#uc7-read value from dict into array"

echo "values of dictory " ${!result[@]}
echo "values from dictory into array " ${result[@]}


#uc8-decending order

arrAsc=($(for i in ${result[@]}; do echo $i;done | sort ))
