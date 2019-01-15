#! /bin/bash

res=$(dmenu -fn 'FuraCode Nerd Font:regular:pixelsize=17' -nb '#002B36' -nf '#839496' -sb '#268BD2' -sf '#002B36' < ~/.dmenu-i3exit)

if [ $res = "lock" ]; then
    i3lock -i ~/Pictures/wallpapers/cool_mountain.png
fi
if [ $res = "logout" ]; then
    i3-msg exit
fi
if [ $res = "restart" ]; then
    reboot
fi
if [ $res = "shutdown" ]; then
    poweroff
fi
exit 0
