#!/bin/bash
#run from sudo because SLIM needs superuser rights

mkdir -vp ~/.config/{i3,polybar,slim,rofi,ranger} #directories created
mkdir -vp ~/code/Shell
mkdir -vp ~/Pictures/screenshots

#i3
cp -v i3/i3wm/config ~/.config/i3/config
cp -v i3/change_i3config_default.sh ~/code/Shell/change_i3config_default.sh && cp -v i3/change_i3config_2.sh ~/code/Shell/change_i3config_2.sh 
cp -v i3/lock.sh ~/code/Shell/lock.sh 
cp -v i3/archwallapper.png ~/Pictures/archwallapper.png #wallpapers
cp -v i3/NGC\ 2841.jpg ~/Pictures/NGC\ 2841.jpg

#polybar
cp -vr polybar ~/.config/polybar
rm -f ~/.config/polybar/{polybar-view1.png,polybar-view2.png}

#zsh
cp -v zshrc ~/.zshrc
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#vim
cp -v vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#slim
sudo cp -vr slim/default /usr/share/slim/themes/

#ranger
ranger --copy-config=all

#rofi
cp -vr rofi/config ~/.config/rofi/config

chmod +x ~/.config/polybar/scripts/* #change modification for scripts
chmod +x ~/code/Shell/*

rofi-theme-selector

echo '--THE END--'
