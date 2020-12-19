#!/bin/bash

# list of droplets
DROPLETS="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

echo $DROPLETS

for droplet in $DROPLETS ; do

    respond=`ping -c1 $droplet | grep "100% packet loss" | wc -l `
    if [ $respond = 0 ] ; then
	echo $droplet ": alive"
    else
        echo $droplet ": dead"
    fi

done


