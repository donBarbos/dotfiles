#!/bin/bash
sed -i 's/bindsym ctrl+o kill/bindsym ctrl+q kill/' $HOME/.config/i3/config
sed -i 's/bindsym Mod1+space exec rofi -show run/bindsym ctrl+space exec rofi -show run/' $HOME/.config/i3/config
source $HOME/.config/i3/config
