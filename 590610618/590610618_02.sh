#!/bin/bash

echo "Grade207:"
i=0
for text in `grep ^[1-9] $1`
do
    i=$(($i+1))
    if(( $(($i%3)) == 0 ))
    then
	 if [ $text -ge 80 ]
	 then
	     echo "A"
	 elif [ $text -ge 70 ]
	 then
	     echo "B"
	 elif [ $text -ge 60 ]
	 then
	     echo "C"
	 elif [ $text -ge 50 ]
	 then
	     echo "D"
	 elif [ $text -lt 50 ]
	 then
	     echo "F"
	 fi
    else
	echo -n "${text} "
    fi	
done
i=0
for text in `grep ^[1-9] $2`
do
    i=$(($i+1))
    if(( $(($i%3)) == 0 ))
    then
         if [ $text -ge 80 ]
         then
             echo "A"
         elif [ $text -ge 70 ]
         then
             echo "B"
         elif [ $text -ge 60 ]
         then
             echo "C"
         elif [ $text -ge 50 ]
         then
             echo "D"
         elif [ $text -lt 50 ]
         then
             echo "F"
         fi
    else
        echo -n "${text} "
    fi
done