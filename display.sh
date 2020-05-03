#!/bin/bash

dir="/home/pi/Desktop/toPresent/" # Gets directory of files

while true;
do
	for f in "$dir"/* # Checks for new images and calculates how many images

	do	

		Cur="$(basename $f)" # Places full name into cur

		Num="`expr substr $Cur 1 2`" # Parses the first Character
		
		
		#if [[$Num = 0*]] # If first digit is 0, remove it to have I only integer
		#	then
		#	$Num="`expr substr $Cur 2 2`" #
		#fi
		
		#sudo openvt -c 2 -f -- fbi -noverbose -a -t $Num -1 $f < /dev/tty2
		
		fbi -noverbose -a -t $Num -1 $f		

		#echo $Num $f #Debug tool to see seconds for each file

	done

done

