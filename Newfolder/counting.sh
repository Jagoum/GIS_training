#!/bin/zsh
count=5
count=`expr $count + 1`
echo $count
PATH=$PATH:$HOME/bin
HA=$1
PHRASE="House on the hill"
export PHRASE
