#!/bin/sh
layout=$(swaymsg -t get_inputs | grep -m1 xkb_active_layout_name | cut -d '"' -f4)

case "$layout" in
"English (US)") echo "EN" ;;
"Russian") echo "RU" ;;
*) echo "$layout" ;;
esac
