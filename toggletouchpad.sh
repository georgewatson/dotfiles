#!/bin/bash
if xinput list-props 11 | grep "Device Enabled (147):.*1" >/dev/null
then
  xinput disable 14
  notify-send -u low -i mouse "Trackpad disabled"
else
  xinput enable 14
  notify-send -u low -i mouse "Trackpad enabled"
fi
