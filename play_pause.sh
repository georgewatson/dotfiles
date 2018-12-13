#! /bin/bash

function is_playing {
    mpc | grep playing
}

mpc toggle

if is_playing ; then
    ~/dotfiles/ncmpcpp_song_change.sh
else
    ~/dotfiles/notify-send.sh/notify-send.sh ' Paused' -u low -t 2000 \
        --replace-file=/tmp/ncmpcpp_notification --app-name=mpc
fi
