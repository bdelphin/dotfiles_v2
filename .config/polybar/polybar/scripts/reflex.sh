#!/bin/bash


ON_ICON=""
OFF_ICON=""

# check if gphoto is running
get_gphoto_status() { STATUS=$(ps aux | grep '[g]photo2' | wc -l); }

get_gphoto_status

if [ $# != 0 ] && [ $1 = "toggle" ]
then
	# toggle
	if [ $STATUS = "0" ]
	then
		/home/baptiste/.config/polybar/scripts/reflex_launch.sh > /dev/null 2>&1 &
		echo $ON_ICON
	else
		pkill -f gphoto2
		echo "%{F#555}$OFF_ICON%{F-}"
	fi

elif [ $# != 0 ] && [ $1 = "interactive" ]
then
	while true; do
		get_gphoto_status
		if [ $STATUS = "0" ]
		then
			echo "%{F#555}$OFF_ICON%{F-}"
		else
			echo $ON_ICON
		fi
		sleep 1
	done
else
	# show current status
	if [ $STATUS = "0" ]
	then
		echo "%{F#555}$OFF_ICON%{F-}"
	else
		echo $ON_ICON
	fi
fi





