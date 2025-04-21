#! /usr/bin/bash

BLUETOOTHCTL=$(which bluetoothctl)

action=$(echo "$1" | tr '[:upper:]' '[:lower:]')
device_mac=$(echo "${!#}" | grep -oP '(?<=\()[^)]+(?=\))')

if [ "$action" = 'disconnect' ]; then
    echo -e "$action" | $BLUETOOTHCTL > /dev/null
else
    echo -e "$action $device_mac" | $BLUETOOTHCTL > /dev/null
fi

