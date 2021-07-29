#!/bin/bash
#run from sudo

read -p ':: Choose window manager
    1)i3wm 2)bspwm

Select an option (default = i3wm): ' option

mkdir -vp ~/code/Shell
mkdir -vp ~/Pictures/screenshots
mv -v .config/i3/lock.sh ~/code/Shell/lock.sh
mv -v .config/i3/wallpaper.jpg ~/Pictures/wallpaper.jpg
mv -v .config/i3/archwallapper.png ~/Pictures/archwallapper.png
mv -v .config/i3/NGC\ 2841.jpg ~/Pictures/NGC\ 2841.jpg

case $option in
    1)
        mv -v .config/i3/change_i3config_default.sh ~/code/Shell/change_i3config_default.sh
        mv -v .config/i3/change_i3config_2.sh ~/code/Shell/change_i3config_2.sh
        rsync -vap --progress .config/ ~/ --exclude={'bspwm','sxhkd'};;
    2)
        rsync -vap --progress .config/ ~/ --exclude 'i3';;
    *)
        rsync -vap --progress .config/ ~/ --exclude={'bspwm','sxhkd'};;
esac

echo 'setting zsh'
cp -v zshrc ~/.zshrc
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo 'setting vim'
cp -v vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp -r ~/.vim/plugged/gruvbox/colors ~/.vim/

echo 'setting SLiM'
sudo cp -vr slim/default /usr/share/slim/themes/

echo 'setting ranger'
ranger --copy-config=all

echo 'setting rofi'
cp -vr rofi/config ~/.config/rofi/config

echo 'mod rights files'
chmod +x ~/.config/polybar/scripts/*
chmod +x ~/code/Shell/*
chmod +x ~/.config/bspwm/bspwmrc

echo 'install dependencies'
sudo pacman -S ttf-opensans ttf-dejavu ttf-liberation ttf-anonymous-pro ttf-nerd-fonts-symbols ttf-droid awesome-terminal-fonts ttf-font-awesome

rofi-theme-selector

echo '--DONE--'
