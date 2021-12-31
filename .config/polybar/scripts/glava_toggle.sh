#/bin/bash

# glava_toggle.sh - Enable/Disable GLava vu-meter
# Baptiste DELPHIN 2021 - github.com/bdelphin

ACTIVE_ICON=""
INACTIVE_ICON=" off"

# return if glava is running
get_glava_status() { STATUS=$(pgrep 'glava' | wc -l); }

get_glava_status

if [ $# != 0 ] && [ $1 = "toggle" ]
then
	# toggle
	if [ $STATUS = "0" ]
	then
		glava -d >>/dev/null 2>&1 &
		echo $ACTIVE_ICON
	else
		killall -q glava
		echo "%{F#555}$INACTIVE_ICON%{F-}"
	fi

elif [ $# != 0 ] && [ $1 = "interactive" ]
then
	while true; do
		get_glava_status
		if [ $STATUS = "0" ]
		then
			echo "%{F#555}$INACTIVE_ICON%{F-}"
		else
			echo $ACTIVE_ICON
		fi
		sleep 1
	done
else
	# show current status
	if [ $STATUS = "0" ]
	then
		echo "%{F#555}$INACTIVE_ICON%{F-}"
	else
		echo $ACTIVE_ICON
	fi
fi





