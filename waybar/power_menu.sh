#!/bin/bash

# Use wofi or dmenu to show options
OPTION=$(echo -e "Shutdown\nReboot\nLogout\nSuspend" | wofi --dmenu --prompt "Power")

case "$OPTION" in
    Shutdown)
        systemctl poweroff
        ;;
    Reboot)
        systemctl reboot
        ;;
    Logout)
        hyprctl dispatch exit
        ;;
    Suspend)
        systemctl suspend
        ;;
esac

