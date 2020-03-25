#!/bin/bash

while true
do
	echo "------------------------------MENIU-------------------------------------"
	echo "0) Quit"
	echo "1) months-lunile pentru care exista log-uri in fisier"
	echo "2) days-pentru o luna citita de la tastatura zilele in care apar log-uri"
	echo "3) hours-pentru o zi din luna citita de la tastatura orele la care apar loguri"
	echo "4) lines-afisarea liniilor din fisier pentru o luna, zi, ora (citite de la tastatura)"
	echo "5) count lines-afisarea numarului de linii din fisier"
	echo "6) search text-afisarea liniilor ce contin un text introdus de la tastatura"
	echo "-----------------------------------------------------------------------------"

	echo "Alege o optiune: "
	read input
	
	if [ $input -eq 0 ]
	then
		exit 0
	elif [ $input -eq 1 ]
	then
		echo "1"
	fi

	clear
done
