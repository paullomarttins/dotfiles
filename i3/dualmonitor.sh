#!/bin/bash
interno=eDP-1
externo=HDMI-1

if xrandr | grep "$externo disconnected"; then
	xrandr --output "$externo" --off --output "$interno" --primary  --auto
else
	xrandr --output "$interno" --primary --auto --output $externo --right-of "$interno" --auto
fi
