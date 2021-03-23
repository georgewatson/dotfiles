#!/bin/bash

# Modified from
# <https://gist.github.com/sebastiencs/5d7227f388d93374cebdf72e783fbd6a>

# You can call this script like this:
# $./volume.sh up
# $./volume.sh down
# $./volume.sh mute

function get_volume {
    # From <https://unix.stackexchange.com/a/230533/243528>
    SINK=$(pactl list short | grep RUNNING | head -n 1 | sed -e \
        's,^\([0-9][0-9]*\)[^0-9].*,\1,')
    pactl list sinks | grep '^[[:space:]]Volume:' | \
        head -n $(( $SINK + 1 )) | tail -n 1 | \
        sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'
}

function is_mute {
    SINK=$(pactl list short | grep RUNNING | head -n 1 | sed -e \
        's,^\([0-9][0-9]*\)[^0-9].*,\1,')
    pactl list sinks | grep '^[[:space:]]Mute:' | \
        head -n $(( $SINK + 1 )) | tail -n 1 | \
        grep yes
}

function send_notification {
    volume=`get_volume`
    # Make the bar with the special character ─ (it's not dash -)
    # https://en.wikipedia.org/wiki/Box-drawing_character
    bar=$(seq -s "─" $((($volume / 2) + 1)) | sed 's/[0-9]//g')

    bar_after=$(seq -s " " $((51 - ($volume / 2))) | sed 's/[0-9]//g')
    # Send the notification
    ~/dotfiles/notify-send.sh/notify-send.sh "Volume" -u normal \
        "$bar$bar_after  $volume%" --replace-file=/tmp/volume_notification \
        -a '🔊' -t 2000
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
                --replace-file=/tmp/volume_notification -t 2000 \
                -a '' 'Pulse audio muted'
        else
            send_notification
        fi
    ;;
esac
