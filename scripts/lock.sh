#!/bin/bash

PICTURE=/tmp/lock.png
BLUR="0x8"  # radiusxsigma

grim -g "0,0 1505x847" $PICTURE
convert $PICTURE -blur $BLUR $PICTURE
swaylock -i $PICTURE
rm $PICTURE
