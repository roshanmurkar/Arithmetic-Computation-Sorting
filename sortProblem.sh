#!/bin/bash -x

echo "welcome to arithmetic computation and sorting program"

#uc1-get input

read -p "enter a 1st value:- " a
read -p "enter a 2nd value:- " b
read -p "enter a 3rd value:- " c

echo $a,$b,$c

#uc2-computation

result=$(($a+$b*$c))

echo $result


#uc3-computation part 2

result=$(($a*$b+$c));
echo $result


#uc4-computation part 3

result=$(($c*$a/$b));
echo $result



#uc5-computation part 4

result=$(($a%$b+$c));
echo $result


