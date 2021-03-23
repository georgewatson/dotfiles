#!/bin/bash

# Modified from
# <https://gist.github.com/sebastiencs/5d7227f388d93374cebdf72e783fbd6a>

brightness=$(xbacklight | cut -d . -f 1)
# Make the bar with the special character ─ (it's not dash -)
# https://en.wikipedia.org/wiki/Box-drawing_character
bar=$(seq -s "─" $((($brightness / 2) + 1)) | sed 's/[0-9]//g')
bar_after=$(seq -s " " $((51 - ($brightness / 2))) | sed 's/[0-9]//g')
# Send the notification
~/dotfiles/notify-send.sh/notify-send.sh "Backlight" -u normal \
    "$bar$bar_after  $brightness%" --replace-file=/tmp/backlight_notification \
    -a '' -t 2000
