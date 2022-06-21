#!/bin/bash

# mute_mic.sh - Mute Default mic module for Polybar
# Baptiste DELPHIN 2020 - github.com/bdelphin

# designed for pulseaudio
# (same should be doable for alsa using amixer but hey, do it.)

#UNMUTE_ICON=""
#MUTED_ICON=""

# return pulseaudio default source index
#get_default_source_index() { INDEX=$(pacmd list-sources | grep "*" | awk '{ print $3 }' | tr '\n' '\0'); }

# return if default pulseaudio source is muted or not (yes ou no)
#get_mute_status() { STATUS=$(pacmd list-sources | awk 'BEGIN{f=0} /* index:/{f=2} f{print}' | grep "muted:" | awk '{ print $2 }' | head -n 1); }


#get_mute_status

if [ $# != 0 ] && [ $1 = "mute_toggle" ]
then
	echo "mute"
    notify-send "test"
    # toggle
	#if [ $STATUS = "no" ]
	#then
	#	pacmd set-source-mute $(pacmd list-sources | grep "*" | awk '{ print $3 }') 1
	#	echo "%{F#555}$MUTED_ICON%{F-}"
	#else
	#	pacmd set-source-mute $(pacmd list-sources | grep "*" | awk '{ print $3 }') 0
	#	echo $UNMUTE_ICON
	#fi

elif [ $# != 0 ] && [ $1 = "interactive" ]
then
	echo "interactive"
    #while true; do
	#	get_mute_status
	#	if [ $STATUS = "no" ]
	#	then
	#		echo $UNMUTE_ICON
	#	else
	#		echo "%{F#555}$MUTED_ICON%{F-}"
	#	fi
	#	sleep 1
	#done
elif [ $# != 0 ] && [ $1 = "scroll-up" ]
then
    echo $2
elif [ $# != 0 ] && [ $1 = "scroll-down" ]
then
    echo $2
#else
	# show current status
#	if [ $STATUS = "no" ]
#	then
#		echo $UNMUTE_ICON
#	else
#		echo "%{F#555}$MUTED_ICON%{F-}"
#	fi
fi

