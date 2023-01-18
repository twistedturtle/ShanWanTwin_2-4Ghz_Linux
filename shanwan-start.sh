#!/bin/bash
HIDRAW_DEVICE=$(dmesg | grep -oP '(?<=2563:0555\.\d{4}: input,)\w{6}\d')
SCRIPT_PATH=/usr/bin/shanwan-joystick.py

# kill any instances already running
killall ${SCRIPT_PATH##*/} &> /dev/null

if [ -n "$HIDRAW_DEVICE" ]
	then
		echo "Found joystick on /dev/$HIDRAW_DEVICE"
		exec "sudo" "python" "$SCRIPT_PATH" "/dev/$HIDRAW_DEVICE" &
fi
