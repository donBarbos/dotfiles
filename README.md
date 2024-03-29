<h1 align="center">DOTFILES</h1>

<h2 align="center">status bar</h2>

![](./screenshots/waybar_bw.png)
![](./screenshots/waybar.png)
![](./screenshots/polybar-view0.png)
![](./screenshots/polybar-view1.png)
![](./screenshots/polybar-view2.png)
![](./screenshots/polybar-view3.png)
![](./screenshots/polybar-view4.png)

<h2 align="center">my workspace</h2>
<img src="https://raw.githubusercontent.com/donBarbos/dotfiles/master/screenshots/worktop0.png">

> *Complete the following tasks or use the [installer](https://github.com/donBarbos/dotfiles/blob/master/install.sh "will transfer to the sourse code") to configure your system.*

## commands for settings apps

### i3-gaps

```
cp -r .config/i3 ~/.config/. && mkdir -p ~/code/shell && mkdir -p ~/Pictures/screenshots && mv ~/.config/i3/change_i3config_default.sh ~/.config/i3/change_i3config_2.sh ~/.config/i3/lock.sh ~/code/shell/ && mv ~/.config/i3/archwallapper.png ~/.config/i3/NGC\ 2841.jpg ~/Pictures/. && chmod +x ~/code/shell/*
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

> if we use tmux, do not forget to specify `set -g mouse on` in `~/.tmux.conf` 

## quick installation

Also you can run *installer*:
```
curl https://raw.githubusercontent.com/donBarbos/dotfiles/master/install.sh | bash
```
