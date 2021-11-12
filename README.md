<h1 align="center">DOTFILES</h1>

<h2 align="center">polybar</h2>
<img src="https://github.com/DONSIMON92/dotfiles/blob/master/screenshots/polybar-view1.png">
<img src="https://github.com/DONSIMON92/dotfiles/blob/master/screenshots/polybar-view2.png">

<h2 align="center">my archlinux</h2>
<img src="https://raw.githubusercontent.com/DONSIMON92/dotfiles/master/screenshots/worktop0.png">

> *Complete the following tasks or use the [installer](https://github.com/DONSIMON92/dotfiles/blob/master/install.sh "will transfer to the sourse code") to configure your system.*

## commands for settings apps

### i3-gaps

```
cp -r .config/i3 ~/.config/. && mkdir -p ~/code/Shell && mkdir -p ~/Pictures/screenshots && mv ~/.config/i3/change_i3config_default.sh ~/.config/i3/change_i3config_2.sh ~/.config/i3/lock.sh ~/code/Shell/ && mv ~/.config/i3/archwallapper.png ~/.config/i3/NGC\ 2841.jpg ~/Pictures/. && chmod +x ~/code/Shell/*
```

### bspwm

```
cp -r .config/bspwm ~/.config/ && cp -r .config/sxhkd ~/.config/ && chmod +x ~/.config/bspwm/bspwmrc
```

### polybar

```
cp -r .config/polybar ~/.config/ && chmod +x ~/.config/polybar/scripts/*
```

### slim

```
sudo cp -r .config/slim/default /usr/share/slim/themes/
```

### rofi

```
rofi-theme-selector
```

### ranger

just generate config file
```
ranger --copy-config=all
```

### vim or neovim

* install [vim-plug](https://github.com/junegunn/vim-plug "github link")

* command for *vim*
```
cp .vimrc ~/.vimrc
```
* command for *neovim*
```
cp -r .config/nvim ~/.config/
```

* go to vim and input the command `:PlugInstall`

## quick installation

Also you can run *installer*:
```
sudo bash install.sh
```
