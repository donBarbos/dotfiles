#!/bin/bash

GRACE=$1

swaylock \
	--screenshots \
	--clock \
	--indicator \
	--indicator-radius 70 \
	--indicator-thickness 7 \
	--effect-blur 7x5 \
	--effect-vignette 0.5:0.5 \
	--ring-color bb00cc \
	--key-hl-color 00ff00 \
	--line-color 00000000 \
	--inside-color 00000088 \
	--separator-color 00000000 \
	--grace $GRACE \
	--fade-in 0.2
#PICTURE=/tmp/lock.png
#BLUR="0x8"

#grim -g "0,0 1505x847" $PICTURE
#convert $PICTURE -blur $BLUR $PICTURE
#swaylock -i $PICTURE
#rm $PICTURE
