#!/bin/bash
# Source: https://askubuntu.com/a/863750 by WinEunuuchs2Unix
# Customized by Wilfred Chan

# NAME: toggle-touchpad.sh
# PATH: /home/$USERNAME/Scripts/toggle_touchpad.sh
# (This PATH is used in Ubuntu setting, can be changed)
# DESC: Update pulseaudio output device when HDMI TV plugged / unplugged


# Use device number matching touchpad, in this case 16
if [[ $(xinput list 16 | grep -Ec "disabled") -eq 1 ]]; then
    xinput enable 16
    DISPLAY=:0 notify-send --urgency=normal "Touchpad Enabled."
else
    xinput disable 16
    DISPLAY=:0 notify-send --urgency=normal "Touchpad Disabled."
fi

exit 0
