#!/bin/bash
#Command Line Arguments
echo Contents of command_Args:
for i in $*
do
 sum=`expr $sum + $i`
done
echo Summation of arguments is: $sum
