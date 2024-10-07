#!/bin/sh
#file-poke - tell us stuff about files

#file=`ls`

#for i in $file
#do
#echo $file
#grep $i $i
#done
#tell us some stuff about files

#for i in *; do
# echo -n $i" 

# grep $i $i


#done


#using the if is to chech if an  operation is valid
# lets try this example
#if grep unix myfile >/dev/null
#then
# echo It is there"
#fi


#!/bin/sh
#largest=0
#for i in 5 8 19 8 7 3; do
# if test $i -gt $largest; then
 # largest=$i
# fi
#done
# echo $largest


#i=1
#sum=0
#while [ $i -le 101 ]; do
# 
#sum=`expr $sum + $i`
#i=`expr $i + 1`
# 
#done
#echo The sum of even numbers is $sum.



# Using the untill loop

x=1
until [ $x -gt 3 ]; do
  echo x = $x
  echo x=$x
  x=`expr $x + 1`
done
