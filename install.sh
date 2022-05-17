#!/bin/bash

read -p ':: Choose window manager
1)i3wm 2)bspwm 3)sway

Select an option (default = i3wm): ' option

sleep 10

mkdir -vp ~/code/shell
mkdir -vp ~/Pictures/screenshots
cp -v scripts/lock.sh ~/code/shell/lock.sh
cp -v .config/i3/{wallpaper.jpg,archwallapper.png,NGC\ 2841.jpg} ~/Pictures/

case $option in
    1)
        rsync -vap --progress .config/ ~/ --exclude={'bspwm','sxhkd'};;
    2)
        rsync -vap --progress .config/ ~/ --exclude 'i3';;
    *)
        rsync -vap --progress .config/ ~/ --exclude={'bspwm','sxhkd'};;
esac

echo 'setting zsh'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp -v zshrc ~/.zshrc

echo 'setting neovim'
cp -v .config/nvim/init.vim ~/.config/nvim/init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cp -r ~/.vim/plugged/gruvbox/colors ~/.config/nvim/

echo 'setting vim'
cp -v vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp -r ~/.vim/plugged/gruvbox/colors ~/.vim/

echo 'setting ranger'
ranger --copy-config=all

echo 'setting wofi'
cp -vr rofi/config ~/.config/rofi/config

echo 'mod rights files'
chmod +x ~/.config/polybar/scripts/*
chmod +x ~/code/shell/*
chmod +x ~/.config/bspwm/bspwmrc

echo 'install dependencies'
sudo pacman -S ttf-opensans ttf-dejavu ttf-liberation ttf-anonymous-pro ttf-nerd-fonts-symbols ttf-droid awesome-terminal-fonts ttf-font-awesome

echo '--DONE--'
