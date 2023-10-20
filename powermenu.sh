#! /usr/bin/bash
#
chosen=$(printf "󰐥 Power Off\n Restart\n󰤄 Suspend\n Log out" | rofi -dmenu -i -l 3)
case "$chosen" in 
	"󰐥 Power Off") shutdown now;;
	" Restart") reboot ;;
     "󰤄 Suspend") systemctl suspend ;;
    " Log out") i3-msg exit ;;
	*) exit 1 ;;
esac
