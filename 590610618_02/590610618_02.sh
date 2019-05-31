#!/bin/bash
i=1
echo "Grade207:"
for text in `grep ^[0-9] $1`
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
i=1
for text in `grep ^[0-9] $2`
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