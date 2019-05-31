#!/bin/bash
if [[ "$1" = "" ]]
then
echo Where is your inputfile?
else
textFile="$1"
total=0
while IFS=',' read -r name price num
do
sum=`expr $price \* $num`
echo "$name($num) : $sum" >> temp.txt
total=`expr $total + $sum`
done<"$textFile"
sort -n temp.txt | tr 'a-z' 'A-Z'>>test.txt
cat -n test.txt
echo "	Total :$total"
rm test.txt temp.txt
fi
