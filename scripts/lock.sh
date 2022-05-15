#!/bin/bash

PICTURE=/tmp/lock.png
BLUR="5x4"

grim -g "0,0 1505x847" $PICTURE
convert $PICTURE -blur $BLUR $PICTURE
swaylock -i $PICTURE
rm $PICTURE
