# Launches randow wallpaper script
~/Work/scripts/randomWall.sh &

# Starts DBus
source /etc/X11/xinit/xinitrc.d/30-dbus &

xrdb -load .config/Xresources
exec i3
