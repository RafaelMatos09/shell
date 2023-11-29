#!/bin/bash

read inputX
read inputY

if [ "$inputX" -lt "$inputY" ]
then
	echo "X is less than Y"
elif [ "$inputX" -eq "$inputY" ]
then
	echo "X is equal to Y"
else
	echo "X is greater than Y"
fi

