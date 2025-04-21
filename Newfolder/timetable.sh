#!/bin/zsh
#time table : prints out multplication time table
for i in 1 2 3
do 
for j in 1 2 3
value=`expr $i\*$j`
echo -n "$value"
done

done
