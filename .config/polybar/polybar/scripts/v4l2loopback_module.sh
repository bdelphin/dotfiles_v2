#/bin/bash

# v4l2looback_module.sh - Enable/Disable v4l2loopback module for Polybar
# Baptiste DELPHIN 2020 - github.com/bdelphin

ON_ICON="on"
OFF_ICON="off"

# return if module is present or not (something or nothing in stdout)
get_status() { STATUS=$(lsmod | grep "v4l2loopback" | awk '{ print $1 }' | head -n 1); }


get_status

if [ $# != 0 ] && [ $1 = "toggle" ]
then
	# toggle
	if [ $STATUS = "v4l2loopback" ]
	then
		echo $ON_ICON
	else
		echo $OFF_ICON
	fi

elif [ $# != 0 ] && [ $1 = "interactive" ]
then
	while true; do
		get_status
		if [ $STATUS = "v4l2loopback" ]
		then
			echo $ON_ICON
		else
			echo $OFF_ICON
		fi
		sleep 1
	done
else
	# show current status
	if [ $STATUS = "v4l2loopback" ]
	then
		echo $ON_ICON
	else
		echo $OFF_ICON
	fi
fi





