#! /bin/bash

res=$(dmenu -fn 'FuraCode Nerd Font:regular:pixelsize=17' -nb '#002B36' -nf '#839496' -sb '#268BD2' -sf '#002B36' < ~/.dmenu-i3gaps)

if [ $res = "default" ]; then
    i3-msg gaps inner current set 20
    i3-msg gaps outer current set 0
    i3-msg gaps horizontal current set 5
fi
if [ $res = "reader" ]; then
    i3-msg gaps inner current set 0
    i3-msg gaps outer current set 0
    i3-msg gaps horizontal current set 300
fi
if [ $res = "none" ]; then
    i3-msg gaps inner current set 0
    i3-msg gaps outer current set 0
fi
if [ $res = "big" ]; then
    i3-msg gaps inner current set 50
    i3-msg gaps outer current set 0
fi
exit 0
