#!/usr/bin/env bash

TMPBG=/tmp/screen.png
#LOCK=~/.config/i3lock/lock.png
SCREENSHOT="scrot -z $TMPBG"

BLUR="5x4"

$SCREENSHOT 
#convert -scale 10% -blur 0x0.5 -resize 1000% $TMPBG $TMPBG
convert $TMPBG -blur $BLUR $TMPBG
#magick composite -gravity center $LOCK $TMPBG $TMPBG
#pkill i3lock
i3lock -i $TMPBG
rm $TMPBG
