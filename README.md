<h1 align="center">DOTFILES</h1>

<h2 align="center">polybar</h2>
<img src="https://github.com/DONSIMON92/dotfiles/blob/master/screenshots/polybar-view1.png">
<img src="https://github.com/DONSIMON92/dotfiles/blob/master/screenshots/polybar-view2.png">

<h2 align="center">my archlinux and vim</h2>
<img src="https://raw.githubusercontent.com/DONSIMON92/dotfiles/master/screenshots/worktop2.png">
<img src="https://raw.githubusercontent.com/DONSIMON92/dotfiles/master/screenshots/vim2.png">

> *Complete the following tasks or use the [installer](https://github.com/DONSIMON92/configs#quick-installation "will transfer to the desired head") to configure your system.*

## i3-gaps

copy config file and other scripts
```
cp i3/i3wm/config ~/.config/i3/config && mkdir -p ~/code/Shell && mkdir -p ~/Pictures/screenshots &&cp i3/change_i3config_default.sh ~/code/Shell/change_i3config_default.sh && cp i3/change_i3config_2.sh ~/code/Shell/change_i3config_2.sh && cp i3/lock.sh ~/code/Shell/lock.sh && cp i3/archwallapper.png ~/Pictures/archwallapper.png && cp i3/NGC\ 2841.jpg ~/Pictures/NGC\ 2841.jpg && chmod +x ~/code/Shell/*
```

## bspwm

copy config folders
```
cp bspwmrc ~/.config/ && cp sxhkdrc ~/.config/ && chmod +x ~/.config/bspwm/bspwmrc
```

## polybar

copy config file and other scripts && change modification for scripts
```
cp -r polybar ~/.config/ && chmod +x ~/.config/polybar/scripts/*
```

## slim

copy the configuration files to the directory: */usr/share/slim/themes/default*
```
sudo cp -r slim/default /usr/share/slim/themes/
```

## rofi

you can preview and apply themes for rofi with
```
rofi-theme-selector
```

or you can copy config file
```
cp rofi/config ~/.config/rofi/config
```

## ranger

generate config file
```
ranger --copy-config=all
```

## vim

+ copy *.vimrc* and *.vim/*
```
cp .vimrc ~/.vimrc
```

+ install [vim-plug](https://github.com/junegunn/vim-plug "github link")
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
+ go to vim and enter the command `:PlugInstall`

## quick installation

OR you can download and run *installer*:
```
sudo bash install.sh
```
