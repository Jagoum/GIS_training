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
if grep unix myfile >/dev/null
then
 echo "It is there"
fi
