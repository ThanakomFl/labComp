#!/bin/bash
touch x
for file in `ls *.dat`
do
    x=`grep ^[1-9] "${file}"` 
    if [ "${x}" != "" ]
    then
	echo "${x}" >> x
    fi
done

i=0
A=0
B=0
C=0
D=0
F=0
touch y
sort -rk 3 x > y
for text in `more y`
do
    i=$(($i+1))
    if(( $(($i%3)) == 0 ))
    then
         if [ $text -ge 80 ]
         then
             echo "A"
	     A=$(($A+1))
         elif [ $text -ge 70 ]
         then
             echo "B"
	     B=$(($B+1))
         elif [ $text -ge 60 ]
         then
             echo "C"
	     C=$(($C+1))
         elif [ $text -ge 50 ]
         then
             echo "D"
	     D=$(($D+1))
         elif [ $text -lt 50 ]
         then
             echo "F"
	     F=$(($F+1))
         fi
    else
        echo -n "${text} "
    fi
done
echo "------------"
echo "A:${A}"
echo "B:${B}"
echo "C:${C}"
echo "D:${D}"
echo "F:${F}"
rm x; rm y;