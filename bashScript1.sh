#!/bin/bash

# variables
NOW=$(date)
USER=$(whoami)

# set BASH to quit if error arises
set -e

# logs can be used to retrace what happend
echo "log START $NOW :" >> Logs.txt

# -le= True if equal or less than,    -eq= Only true if equal
# -ge= True if equal or greater than
# $# = numer of parameters given ,     >> is appending text to a file

if [ $# -eq 0 ]; then
	# update + upgrade system
	sudo apt update
	sudo apt dist-upgrade
	clear
	echo "system updated" >> Logs.txt
elif [ $1 -le 1 ]; then
	# output systeminformation
	echo "currently logged in as $USER."
	echo "Memory: "
	free -h
	echo "Disk Usage: "
	df -h
	echo "Uptime :"
	uptime -p
	echo "systeminformation " >> Logs.txt
elif [ $1 -eq 2 ]; then
	# create multiple directories with multiple files inside
	for VAR in {1..3}; do
	mkdir -p dir$VAR
	cd dir$VAR
	touch file{1..3}.txt
	cd ..
	done
	echo "directories and files created"
	echo "create multiple dirctoies and files" >> Logs.txt
elif [ $1 -eq 3 ]; then
	echo "Logs.txt words:"
	wc -w < Logs.txt
	echo "Logs.txt lines:"
	wc -l < Logs.txt
	echo "Information about LOgs.txt" >> Logs.txt
else [ $1 -ge 4 ]
	echo "nothing has been done" >> Logs.txt
fi



echo "log END." >> Logs.txt
echo "script executed successfully!"
exit 0
