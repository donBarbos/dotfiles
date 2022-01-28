syndaemon -d -i 0.5 -t -K -R
xautolock -time 10 -locker "slock" &
xrdb -merge ~/.Xresources
exec i3
