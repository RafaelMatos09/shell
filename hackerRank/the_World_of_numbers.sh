#!/bin/bash -x

set -x

read inputX
read inputY

if [ "$inputX" -le  100 ] && [ "$inputY" -ge -100 ]
then
	if [ "$inputY" -eq 0 ]
	then
		exit 1
	fi

sum=$((inputX + inputY))
dif=$((inputX - inputY))
mult=$((inputX * inputY))
div=$((inputX / inputY))

div_int=$(printf "%.0f" "$div")

echo "$sum"
echo "$dif"
echo "$mult"
echo "$div_int"

fi
