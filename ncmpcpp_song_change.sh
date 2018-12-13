#! /bin/bash

# Get fields from mpc, split by tabs.
IFS=$'\t' read album_raw artist_raw title_raw \
  <<< "$(mpc --format="%album%\t%artist%\t%title%")"

title=$(sed 's/&/and/g' <(echo "$title_raw"))
artist=$(sed 's/&/and/g' <(echo "$artist_raw") | sed 's/;/, /g')
album=$(sed 's/&/and/g' <(echo "$album_raw"))

~/dotfiles/notify-send.sh/notify-send.sh \
    --urgency=low --expire-time=5000 --app-name=ncmpcpp \
    --replace-file=/tmp/ncmpcpp_notification \
    --icon=audio-x-generic " $title" "$artist — <i>$album</i>"
