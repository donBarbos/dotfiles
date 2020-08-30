# CONFIGS
I have a [installer](https://github.com/DONSIMON92/configs/blob/master/install.sh "his code")

---

### polybar settings
![Polybar illustration](https://github.com/DONSIMON92/configs/blob/master/polybar/polybar-view1.png)
![Polybar illustration](https://github.com/DONSIMON92/configs/blob/master/polybar/polybar-view2.png)

## my archlinux 
![worktop illustration](https://github.com/DONSIMON92/configs/blob/master/worktop.png)

---
### Steps

> *Complete the following tasks to configure your system.*

1. [i3wm](https://github.com/DONSIMON92/configs#i3wm "will transfer to the desired head")
2. [polybar](https://github.com/DONSIMON92/configs#polybar "will transfer to the desired head")
3. [slim](https://github.com/DONSIMON92/configs#slim "will transfer to the desired head")
4. [rofi](https://github.com/DONSIMON92/configs#rofi "will transfer to the desired head") 
5. [ranger](https://github.com/DONSIMON92/configs#ranger "will transfer to the desired head")
6. [vim](https://github.com/DONSIMON92/configs#vim "will transfer to the desired head")

## I3WM

+ copy config file and other scripts
```
cp i3/i3wm/config ~/.config/i3/config && mkdir ~/code && mkdir ~/Pictures && mkdir ~/code/Shell && cp i3/change_i3config_default.sh ~/code/Shell/change_i3config_default.sh && cp i3/change_i3config_2.sh ~/code/Shell/change_i3config_2.sh && cp i3/lock.sh ~/code/Shell/lock.sh && cp i3/wallpaper.jpg ~/Pictures/wallpaper.jpg
```

## POLYBAR

+ copy config file and other scripts
```
cp -r polybar ~/.config/polybar
```

## SLiM

+ copy the configuration files to the directory: */usr/share/slim/themes/default*
```
sudo cp -r slim/default /usr/share/slim/themes/default
```

## Rofi

+ you can preview and apply themes for rofi with
```
rofi-theme-selector
```

+ or you can copy config file
```
cp rofi/config ~/.config/rofi/config
```

## Ranger

+ create config file
```
ranger --copy-config=all
```

## VIM

+ copy *.vimrc* and *.vim/*
```
cp .vimrc ~/.vimrc && cp -r .vim ~/.vim 
```

+ install [vim-plug](https://github.com/junegunn/vim-plug "github link")
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
+ go to vim and enter the command `:PlugInstall`

## Installer

OR you can download and run *installer*:
```
git clone https://github.com/DONSIMON92/configs.git
cd configs
sudo bash install.sh
```
