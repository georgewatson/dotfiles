#! /bin/bash

res=$(dmenu -fn 'Rec Mono Duotone:regular:pixelsize=17' -nb '#ffffff' -nf '#333333' -sb '#30b7f3' -sf '#333333' < ~/.dmenu-i3exit)

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
