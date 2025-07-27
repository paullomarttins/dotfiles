#!/usr/bin/env bash

killall -q polybar

polybar-msg cmd quit

if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload mybar &
    done
else
   polybar --reload mybar &
fi

# Launch Polybar
#echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown

echo "Bars launched..."
