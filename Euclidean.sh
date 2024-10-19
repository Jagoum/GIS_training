#!/bin/bash
#find the  greatest commond divisor of two numbers
function(interger num1, interger num2){ returns interger

#steps to follow
#begin with a pair of non negative interger 
# if one of the two is 0  then greatest commond divisor is the non-zero value
#otherwise apply the division of two numbers ie m = nq + r where r is the remainder and q is the qoutient.
# where 0<=r<n
#replace the pair of (m,n) with (n,r)
#continue untill you have the remainder as


if m=0 AND n!=0 then
	return  n
else if m!=0 AND n=0 then
	return m
else if m=0 AND n=0 then
	return 0
else 
	 r = m MOD n
	n = m/n


