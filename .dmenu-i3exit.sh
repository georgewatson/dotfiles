#! /bin/bash

res=$(dmenu -fn 'Caskaydia Cove Nerd Font:regular:pixelsize=17' -nb '#333333' -nf '#cccccc' -sb '#30b7f3' -sf '#333333' < ~/.dmenu-i3exit)

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
