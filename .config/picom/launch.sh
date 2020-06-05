#!/usr/bin/env bash

# Terminate already running bar instances
killall -q picom
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/picom.log

picom --config .config/picom/picom.conf >>/tmp/polybarDVI.log 2>&1 &

echo "Picom launched..."
