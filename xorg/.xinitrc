#!/bin/sh

# Starts DBus
source /etc/X11/xinit/xinitrc.d/30-dbus &

xrdb -load .config/Xresources

# US altgr-intl keymap
setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl

exec i3
