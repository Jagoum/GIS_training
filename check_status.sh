#!/bin/bash
#This program is to check if a service is running and 
read -p " Enter the service you want to check : " service
var=$(systemctl is-active $service)
if [ $var = "active" ]; then
	echo " This service is active "
	exit 0
else 
	read -p "This service is not active do you want to activate it ? " ans
	if [ $ans = "yes" ]; then
		systemctl start $service 
		if [ $? -eq 0 ]; then
			echo "This service was successfully started "
		fi

	fi

fi
