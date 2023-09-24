#!/bin/bash
TMPBG=/tmp/screen.png
LOCK=~/.config/i3lock/lock.png

import -window root $TMPBG
convert $TMPBG -channel RGBA -blur 0x8 $TMPBG \
&& composite -gravity center $LOCK $TMPBG $TMPBG

i3lock -i $TMPBG
rm $TMPBG
