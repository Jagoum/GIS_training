#!/bin/bash
for v in `ls`
do
	echo "I'm seeing $v"
done
if read -t 5 -p " Do you want to continue ? : " ans
then
	if [ "$ans" = "y" ]
	then
		echo "Counting "
		for v in `seq 1 10 `
		do
			echo " $v"
		done
	else 
		echo " Good bye !  "
		exit 1
	fi
else
	echo -e "\n\a Timeout !!"
fi
