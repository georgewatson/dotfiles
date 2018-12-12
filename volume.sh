#!/bin/bash

# Modified from
# <https://gist.github.com/sebastiencs/5d7227f388d93374cebdf72e783fbd6a>

# You can call this script like this:
# $./volume.sh up
# $./volume.sh down
# $./volume.sh mute

function get_volume {
    pactl list sinks | grep '^[[:space:]]Volume:' | \
        head -n $(( $SINK + 1 )) | tail -n 1 | \
        sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'
}

function is_mute {
    amixer get Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

function send_notification {
    volume=`get_volume`
    # Make the bar with the special character ─ (it's not dash -)
    # https://en.wikipedia.org/wiki/Box-drawing_character
    bar=$(seq -s "─" $(($volume / 4)) | sed 's/[0-9]//g')
    # Send the notification
    ~/dotfiles/notify-send.sh/notify-send.sh "Volume $volume" -u normal \
        "   $bar" --replace-file=/tmp/volume_notification -a 'pulse' -t 1000
}

case $1 in
    up)
    # Set the volume on (if it was muted)
    amixer -D pulse set Master on > /dev/null
    # Up the volume (+ 5%)
    amixer -D pulse sset Master 5%+ > /dev/null
    send_notification
    ;;
    down)
    amixer -D pulse set Master on > /dev/null
    amixer -D pulse sset Master 5%- > /dev/null
    send_notification
    ;;
    mute)
        # Toggle mute
    amixer -D pulse set Master 1+ toggle > /dev/null
    if is_mute ; then
        ~/dotfiles/notify-send.sh/notify-send.sh 'Mute' -u normal \
            --replace-file=/tmp/volume_notification -a 'pulse' -t 2000
    else
        send_notification
    fi
    ;;
esac
