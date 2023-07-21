#! /usr/bin/bash
#
chosen=$(printf "󰐥 Power Off\n Restart\n Log out" | rofi -dmenu -i)
case "$chosen" in 
	"󰐥 Power Off") shutdown now;;
	" Restart") reboot ;;
    " Log out") i3-msg exit ;;
	*) exit 1 ;;
esac
