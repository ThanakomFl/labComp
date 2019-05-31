#!/bin/bash


mkdir $1/Music $1/Movie 
find $1/ -name "*.mp3" | wc -l > mp3.txt
find $1/ -name "*.mp4" | wc -l > mp4.txt
find $1/ -name "*.*" | wc -l > all.txt
for f in `find $1/ -name "*.mp3"`
do
	mv $f $1/Music
done
for f in `find $1/ -name "*.mp4"`
do
	mv $f $1/Movie
done

a=`cat mp3.txt`
b=`cat mp4.txt`
c=`cat all.txt`
d=`expr $a + $b `
c=`expr $c - $d `
echo $c > all.txt





