#!/bin/bash
# Source: https://askubuntu.com/a/863750 by WinEunuuchs2Unix
# Customized by Wilfred Chan

# NAME: toggle-touchpad
# PATH: /home/$USERNAME/Scripts/toggle_touchpad.sh (This PATH is used in Ubuntu setting)
# DESC: Update pulseaudio output device when HDMI TV plugged / unplugged
# DATE: Created Dec 23, 2016.
# NOTE: Written for AU question: http://askubuntu.com/questions/863746/keyboard-shortcut-to-disable-the-laptop-touchpad/863750?noredirect=1#comment1333958_863750


# Use device number matching touchpad, in this case 16
if [[ $(xinput list 16 | grep -Ec "disabled") -eq 1 ]]; then
    xinput enable 16
    DISPLAY=:0 notify-send --urgency=normal "Touchpad Enabled."
else
    xinput disable 16
    DISPLAY=:0 notify-send --urgency=normal "Touchpad Disabled."
fi

exit 0
