#!/bin/bash
varfile=$1
if [ -e $varfile ]
then
  var1=$(date +"%Y-%m-%d")_"$1"
  mv "$1" "$var1"
else 
  var2=$(date +"%Y-%m-%d")_"$1"
  touch "$var2"
fi
echo 'File Created/Modified is: ' $var2

