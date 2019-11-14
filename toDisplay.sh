#!/bin/bash
#github.com/lee2sman/rasp-pi-slideshow
#sudo apt-get update
#sudo apt-get install fbi
#sudo apt-get install imagemagick

INTERVAL=5
fbi -noverbose -a -t $INTERVAL /home/pi/Desktop/displayToTV/*.jpg
