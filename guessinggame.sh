#!/bin/bash
# File: guessinggame.sh

function GameName {
	echo "*** Pogoditi broj fajlova i broj foldera u izabranom direktorijumu ***"
}

GameName

echo -n "Unesite putanju do direktorijuma: "
read BASE_DIR

if [[ -d "$BASE_DIR" ]]; then
	NUMBER_OF_DIRS=$(find "$BASE_DIR" -mindepth 1 -maxdepth 1 -type d | wc -l)
	NUMBER_OF_FILES=$(find "$BASE_DIR" -mindepth 1 -maxdepth 1 -type f | wc -l)

	until [[ $response_dirs -eq $NUMBER_OF_DIRS && $response_files -eq $NUMBER_OF_FILES ]]; do
		echo -n "Pogadjajte broj foldera: "
		read response_dirs
		
		echo -n "Pogadjajte broj fajlova: "
		read response_files
		
		if [[ $response_dirs -gt $NUMBER_OF_DIRS ]]
		then
			echo "$response_dirs, je veci on trazenog broja foldera, pokusajte ponovo!"
		elif [[ $response_dirs -lt $NUMBER_OF_DIRS ]]
		then
			echo "$response_dirs, je manji on trazenog broja foldera, pokusajte ponovo!"
		else
			echo "$response_dirs, je tacan broj foldera!"
		fi

		if [[ $response_files -gt $NUMBER_OF_FILES ]]
		then
			echo "$response_files, je veci on trazenog broja fajlova, pokusajte ponovo!"
		elif [[ $response_files -lt $NUMBER_OF_FILES ]]
		then
			echo "$response_files, je manji on trazenog broja fajlova, pokusajte ponovo!"
		else
			echo "$response_files, je tacan broj fajlova!"
		fi
	done

	echo "Pogodjen je pravi broj foldera, $response_dirs."
	echo "Pogodjen je pravi broj fajlova, $response_files."
	echo "*** KRAJ ***"
else
	echo "Morate uneti ispravnu putanju do direktorijuma."
fi
