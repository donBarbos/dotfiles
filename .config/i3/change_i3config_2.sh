#!/bin/bash
sed -i 's/bindsym ctrl+q kill/bindsym ctrl+o kill/' $HOME/.config/i3/config
sed -i 's/bindsym ctrl+space exec rofi -show run/bindsym Mod1+space exec rofi -show run/' $HOME/.config/i3/config
