#!/bin/sh
echo "Please enter a number"
read num
count=1
until [ $count -gt $num ]; do
echo  "$count"
count=`expr $count + 1`
done
