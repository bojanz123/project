#!/bin/bash bash
# File: guessinggame.sh

function welcome {
echo "broj fajlova u direktorijumu"
}

welcome

nooffiles=$(pwd | ls | wc -l)

until [[ $response -eq $nooffiles ]]; do
	read response
	if [[ $response -gt $nooffiles ]]
	then
		echo " $response, je manji on trazenog broja, try again"
	elif [[ $response -lt $nooffiles ]]
	then
		echo " $response, je manji od trazenog broja, try again"
	fi
done

echo "Pogodjen je pravi broj, $response."
echo "Kraj"
