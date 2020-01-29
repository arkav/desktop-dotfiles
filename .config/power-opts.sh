#!/bin/bash
choice=$(echo -e "Logout\nShutdown\nReboot" |rofi -dmenu)
case $choice in
	"Logout")
		i3-msg exit
		;;
	"Shutdown")
		shutdown now
		;;
	"Reboot")
		reboot
		;;
	*) break
esac
