#!/bin/bash

# variables
NOW=$(date)

# logs can be used to retrace what happend
echo "log START $NOW :" >> Logs.txt

# -le= True if equal or less than,    -eq= Only true if equal
# -ge= True if equal or greater than
# $# = numer of parameters given

if [ $# -eq 0 ]; then
	echo "if"

elif [ $1 -le 1 ]; then
	echo "elif1"

elif [ $1 -eq 2 ]; then
	echo "elif2"

else [ $1 -ge 3 ]
	echo "else"

fi



echo "log END." >> Logs.txt
echo "script executed successfully!"

exit 0
# exit 0 means that the programm/script ended in success
