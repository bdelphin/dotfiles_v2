#!/bin/bash

ON_ICON="php8"
OFF_ICON="php7"

# check if php8 is enabled
get_php8_enabled() { STATUS=$(ls ~/.config/polybar/scripts/php8_enabled | wc -l); }

get_php8_enabled

if [ $# != 0 ] && [ $1 = "toggle" ]
then
	# toggle
	if [ $STATUS = "0" ]
	then
		/home/baptiste/scripts/enable_php8.sh
        touch ~/.config/polybar/scripts/php8_enabled
		echo $ON_ICON
	else
		/home/baptiste/scripts/enable_php7.sh
        rm ~/.config/polybar/scripts/php8_enabled
		echo $OFF_ICON
	fi

elif [ $# != 0 ] && [ $1 = "interactive" ]
then
	while true; do
		get_php8_enabled
		if [ $STATUS = "0" ]
		then
			echo $OFF_ICON
		else
			echo $ON_ICON
		fi
		sleep 1
	done
else
	# show current status
	if [ $STATUS = "0" ]
	then
		echo $OFF_ICON
	else
		echo $ON_ICON
	fi
fi





