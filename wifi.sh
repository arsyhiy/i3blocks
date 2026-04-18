#!/bin/sh
ssid=$(iwgetid -r)

if [ -n "$ssid" ]; then
	echo "📶 $ssid"
else
	echo "📡 offline"
fi
