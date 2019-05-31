#!/bin/bash
echo "Grade207:"
for file in `ls *.dat`
do
x=`grep ^[CPE] $file` 
if [ "$x" != "" ]
then
    i=1
    for text in `grep ^[0-9] $file`
    do
	if(($i%3==0))
	then
            if(($text >= 80))
            then
		echo "A"
            elif(($text >= 70))
            then
		echo "B"
            elif(($text >= 60))
            then
		echo "C"
            elif(($text >= 50))
            then
		echo "D"
            else
		echo "F"
            fi
	else
            echo -n "${text}    "
	fi
	i=$(($i+1))
    done
fi
done
