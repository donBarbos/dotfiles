xautolock -time 10 -locker "slock" &
xrdb -merge ~/.Xresources
exec i3
