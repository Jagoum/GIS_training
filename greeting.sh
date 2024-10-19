#!/bin/bash
name=$(whoami)
echo " welcome $(whoami), hope your are doing great?"
read ans
case $ans in
yes)
    echo "Thats nice $(whoami). Am so so glad to here that you are fine"
    ;;
no)
    echo "Am sorry $(whoami) but it wasn't my intension to make you sad"
    ;;
*)
    exit
    ;;
esac
d=$(date)
echo "Date of today is :  $d" 


