#!/bin/bash

#run from sudo

mkdir -vp ~/.config/{i3,polybar,slim,rofi,ranger}
echo '--directories created--'

sudo cp -vr /etc/i3 ~/.config/i3/
sudo cp -vr /usr/share/doc/polybar/config ~/.config/polybar/
sudo cp -vr /usr/share/slim/themes/default ~/.config/slim/
ranger --copy-config=all
sudo cp -vr /etc/vim ~/.vimrc
echo '--files created--'


echo '--END--'
