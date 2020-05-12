#!/bin/bash

#run from sudo

mkdir -vp ~/.config/{i3,polybar,slim,rofi,ranger}
echo '--directories created--'


cp -v i3/i3wm/config ~/.config/i3/config && mkdir ~/code && mkdir ~/Pictures && mkdir ~/code/Shell && cp -v i3/change_i3config_default.sh ~/code/Shell/change_i3config_default.sh && cp -v i3/change_i3config_2.sh ~/code/Shell/change_i3config_2.sh && cp -v i3/lock.sh ~/code/Shell/lock.sh && cp -v i3/wallpaper.jpg ~/Pictures/wallpaper.jpg
sudo cp -vr polybar ~/.config/polybar
sudo cp -vr /usr/share/slim/themes/default ~/.config/slim/
ranger --copy-config=all
sudo cp -vr .vimrc ~/.vimrc && sudo cp -vr .vim ~/.vim
sudo cp -vr rofi/config ~/.config/rofi/config
echo '--files created--'

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo '--download plug-vim--'

chmod +x ~/.config/polybar/scripts/*
echo '--change modification for scripts--'

echo '--THE END--'
