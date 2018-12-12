#! /bin/bash

# Get fields from mpc, split by tabs.
IFS=$'\t' read album artist title \
  <<< "$(mpc --format="%album%\t%artist%\t%title%")"

~/dotfiles/notify-send.sh/notify-send.sh \
    --urgency=low --expire-time=5000 --app-name=ncmpcpp \
    --replace-file=/tmp/ncmpcpp_notification \
    --icon=audio-x-generic "$title" "$artist — $album"
