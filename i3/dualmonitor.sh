#!/bin/bash
interno=eDP-1
externo=HDMI-1

if xrandr | grep "$externo disconnected"; then
	xrandr --output "$externo" --off --output "$interno" --primary  --auto
else
	xrandr --output "$interno" --primary --auto --output $externo --right-of "$interno" --auto
fi

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload example &
  done
else
  polybar --reload example &
fi
