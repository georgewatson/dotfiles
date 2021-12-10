#! /bin/bash

res=$(dmenu -fn 'Rec Mono Duotone:regular:pixelsize=17' -nb '#ffffff' -nf '#333333' -sb '#30b7f3' -sf '#333333' < ~/.dmenu-i3gaps)

if [ $res = "default" ]; then
    i3-msg gaps inner current set 20
    i3-msg gaps outer current set 0
    i3-msg gaps horizontal current set 4
    i3-msg gaps top current set -10
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
if [ $res = "huge" ]; then
    i3-msg gaps inner current set 50
    i3-msg gaps outer current set 0
    i3-msg gaps vertical current set 200
    i3-msg gaps horizontal current set 400
fi
exit 0
