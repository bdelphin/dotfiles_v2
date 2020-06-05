#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybarDVI.log /tmp/polybarDP.log
polybar dvi >>/tmp/polybarDVI.log 2>&1 &
polybar dp >>/tmp/polybarDP.log 2>&1 &
#polybar dvi_bottom >>/tmp/polybarDVI_BOTTOM.log 2>&1 &
#polybar dp_bottom >>/tmp/polybarDP_BOTTOM.log 2>&1 &

echo "Bars launched..."
