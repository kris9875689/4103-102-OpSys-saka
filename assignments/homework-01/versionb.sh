#!/bin/bash
fullfilename=$(basename "$1")
fileext="${fullfilename##*.}"
filename="${fullfilename%.*}"
if [ -e $fullfilename ]
then
  var1=$filename'_'$(date +"%Y-%m-%d").$fileext
  mv "$1" "$var1"
else 
  var2=$filename'_'$(date +"%Y-%m-%d").$fileext
  touch "$var2"
fi
echo 'File created/Modified is:' $var2


