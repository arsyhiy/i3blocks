#!/bin/sh
bat=$(ls /sys/class/power_supply/ | grep BAT | head -n1)

if [ -n "$bat" ]; then
	cap=$(cat /sys/class/power_supply/$bat/capacity)
	stat=$(cat /sys/class/power_supply/$bat/status)

	case "$stat" in
	Charging) echo "🔌 $cap%" ;;
	Discharging) echo "🔋 $cap%" ;;
	*) echo "$cap%" ;;
	esac
fi
