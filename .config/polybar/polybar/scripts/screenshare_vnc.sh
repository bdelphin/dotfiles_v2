#!/bin/bash

ON_ICON=""
OFF_ICON=""

# check if vnc is running
get_vnc_status() { STATUS=$(ps aux | grep '[x]11vnc' | wc -l); }

get_vnc_status

if [ $# != 0 ] && [ $1 = "toggle" ]
then
	# toggle
	if [ $STATUS = "0" ]
	then
		/home/baptiste/scripts/vnc_screen_share_start.sh
		echo $ON_ICON
	else
		pkill -f x11vnc
		echo "%{F#555}$OFF_ICON%{F-}"
	fi

elif [ $# != 0 ] && [ $1 = "interactive" ]
then
	while true; do
		get_vnc_status
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





