#/bin/bash

# mute_mic.sh - Mute Default mic module for Polybar
# Baptiste DELPHIN 2020 - github.com/bdelphin

# designed for pulseaudio
# (same should be doable for alsa using amixer but hey, do it.)

ICON="  "

# return KBD brightness
get_kbd_brightness() { brightness=$(cat /sys/class/leds/smc\:\:kbd_backlight/brightness); }


get_kbd_brightness

if [ $# != 0 ] && [ $1 = "toggle" ]
then
	echo "err"
elif [ $# != 0 ] && [ $1 = "interactive" ]
then
	while true; do
		get_kbd_brightness
		percent=$(expr $brightness \* 100 / 255)
		echo $percent% $ICON
		sleep 1
	done
else
	echo "err"
fi





