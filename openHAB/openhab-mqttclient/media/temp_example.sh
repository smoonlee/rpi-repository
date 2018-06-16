#!/bin/bash

Temp=`python /media/dht22_output.py | cut -c 6-7`

if [ $Temp -lt 23 ]; then
gpio write 2 0
echo light_on
echo $Temp
elif [ $Temp -gt 26 ]; then
gpio write 2 1
echo light_off
echo $Temp
fi

