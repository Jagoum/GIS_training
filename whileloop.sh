#!/bin/bash
VAR=$2
while [ "$VAR" > "42" ]
do
	echo "Var is $VAR still greater than 42 "
	let VAR=VAR-1
done
