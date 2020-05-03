#!./bin/bash -eu

#watch_DIRECTORY_TO_OBSERVE="file:///home/pi/Desktop/displayToTv"       # file directory to watch
#function block_for_change {

#	inotifywait --recursive \				# inotify-tools is the tool I used
#	--event modify,move,create,delete \
#	$DIRECTORY_TO_OBSERVE

#}
#BUILD_SCRIPT=toDisplay.sh
#function build {
#	bash $BUILD_SCRIPT
#}
#build
#while block_for_change; do
#	build
#done                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

watch_dir = "file:///home/pi/Desktop/displayToTv"

while inotifywait -e modify watch_dir; do
	toDisplay.sh
done
