# Set French keymap
setxkbmap fr &

# export GTK_IM_MODULE_FILE=/etc/gtk-2.0/gtk.immodules
# ibus-daemon --xim -d

# Launches randow wallpaper script
~/Work/scripts/randomWall.sh &

# Starts DBus
source /etc/X11/xinit/xinitrc.d/30-dbus &

# Loads Xresources
xrdb -load .config/Xresources

# Starts awesome-wm
exec awesome
