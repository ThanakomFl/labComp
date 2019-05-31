#!/bin/bash

while true
do
echo -n "Your score="
read score 
if(($score >= 80))
then
echo "Your grade: A"
elif(($score >= 70))
then
echo "Your grade: B"
elif(($score >= 60))
then
echo "Your grade: C"
elif(($score >= 50))
then
echo "Your grade: D"
else
echo "Your grade: F"
fi
done