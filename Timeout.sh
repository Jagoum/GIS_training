#!/bin/bash
if read -t 10 -p "Enter your password : " pass
then
	echo -e "\n\a Loading .... "
else
	echo -e "\n\a\a Timeout !!!!"
fi
