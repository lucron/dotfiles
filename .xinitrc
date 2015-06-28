xautolock -time 60 -locker "systemctl suspend" -detectsleep &
redshift-gtk &
xrdb -merge ~/.Xresources
exec i3
