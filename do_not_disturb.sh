#! /bin/sh

timer=${1:-300}

~/dotfiles/notify-send.sh/notify-send.sh \
    -a '' \
    'Do Not Disturb' \
    "$timer" \
    -t 2000
sleep 3
killall -SIGUSR1 dunst # pause

sleep $timer
killall -SIGUSR2 dunst # resume
~/dotfiles/notify-send.sh/notify-send.sh \
    -a '' \
    'Do Not Disturb' \
    'OFF' \
