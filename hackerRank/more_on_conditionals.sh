#!/bin/bash

read inputX
read inputY
read inputZ

if [ "$inputX" -ge 1 ] && [ "$inputX" -le 1000 ] && \
   [ "$inputY" -ge 1 ] && [ "$inputY" -le 1000 ] && \
   [ "$inputZ" -ge 1 ] && [ "$inputZ" -le 1000 ]
then
	if [ "$((inputX + inputY))" -gt "$inputZ" ] && [ "$((inputX + inputZ))" -gt "$inputY" ] && [ "$((inputY + inputZ))" -gt "$inputX" ]
	then
    		if [ "$inputX" -eq "$inputY" ] && [ "$inputY" -eq "$inputZ" ]
		then
        		echo "EQUILATERAL"
    		elif [ "$inputX" -eq "$inputY" ] || [ "$inputX" -eq "$inputZ" ] || [ "$inputY" -eq "$inputZ" ]
		then
        		echo "ISOSCELES"
    		else
        		echo "SCALENE"
		fi
	fi
fi
