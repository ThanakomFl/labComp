#!/bin/bash

while true
do
 echo -n "Your score ="; 
 read  score;
 if [ $score -ge 80 ]
 then 
     echo " Your grade: A"
 elif [ $score -ge 70 ]
 then
     echo " Your grade: B"
 elif [ $score -ge 60 ]
 then
     echo " Your grade: C"
 elif [ $score -ge 50 ]
 then
     echo " Your grade: D"
 elif [ $score -lt 50 ]
 then
     echo " Your grade: F"
 fi
done