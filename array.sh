# #!/bin/sh
# arr=(1 12 31 4 5)
# i=0
# while [$i -lt ${#arr[@]}]
# do


# 	echo "${#arr[@]}"
# 	i=`expr $i + 1`
# done

# !/bin/bash
# To declare static Array 
arr=(1 12 31 4 5 7 10 11 8 6)
i=0

# Loop upto size of array
# starting from index, i=0
while [ $i -lt ${#arr[@]} ]
do
	# To print index, ith
	# element
	echo ${arr[$i]}
	
	# Increment the i = i + 1
	i=`expr $i + 1`
done
echo "The size of the array is equal to ${#arr[@]}"
 
