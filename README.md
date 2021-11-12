<h1 align="center">DOTFILES</h1>

<h2 align="center">polybar</h2>
<img src="https://github.com/DONSIMON92/dotfiles/blob/master/screenshots/polybar-view1.png">
<img src="https://github.com/DONSIMON92/dotfiles/blob/master/screenshots/polybar-view2.png">

<h2 align="center">my archlinux</h2>
<img src="https://raw.githubusercontent.com/DONSIMON92/dotfiles/master/screenshots/worktop0.png">

> *Complete the following tasks or use the [installer](https://github.com/DONSIMON92/dotfiles/blob/master/install.sh "will transfer to the sourse code") to configure your system.*

## i3-gaps

copy config file and other scripts
```
cp -r .config/i3 ~/.config/. && mkdir -p ~/code/Shell && mkdir -p ~/Pictures/screenshots && mv ~/.config/i3/change_i3config_default.sh ~/.config/i3/change_i3config_2.sh ~/.config/i3/lock.sh ~/code/Shell/ && mv ~/.config/i3/archwallapper.png ~/.config/i3/NGC\ 2841.jpg ~/Pictures/. && chmod +x ~/code/Shell/*
```

## bspwm

copy config folders
```
cp -r .config/bspwm ~/.config/ && cp -r .config/sxhkd ~/.config/ && chmod +x ~/.config/bspwm/bspwmrc
```

## polybar

copy config file and other scripts && change modification for scripts
```
cp -r .config/polybar ~/.config/ && chmod +x ~/.config/polybar/scripts/*
```

## slim

copy the configuration files to the directory: */usr/share/slim/themes/default*
```
sudo cp -r .config/slim/default /usr/share/slim/themes/
```

## rofi

you can preview and apply themes for rofi with
```
rofi-theme-selector
```

or you can copy config file
```
cp .config/rofi/config ~/.config/rofi/config
```

## ranger

generate config file
```
ranger --copy-config=all
```

## vim or neovim

+ install [vim-plug](https://github.com/junegunn/vim-plug "github link")

+ copy `.vimrc` or `init.vim`
```
cp .vimrc ~/.vimrc
```
or (for neovim)
```
cp -r .config/nvim ~/.config/
```

+ go to vim and enter the command `:PlugInstall`

## quick installation

Also you can run *installer*:
```
sudo bash install.sh
```
