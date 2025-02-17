#!/bin/bash
if xrandr | grep "DP-3.8 connected"
then
    xrandr --output DP-3.1 --auto --rotate left 
    xrandr --output DP-3.8 --auto --rotate normal --right-of DP-3.1 
    xrandr --output DP-2 --off
    xrandr --output HDMI-0 --off
else
    xrandr --output DP-3.1 --off 
    xrandr --output DP-3.8 --off 
    xrandr --output DP-2 --auto 
    xrandr --output HDMI-0 --same-as DP-2
fi
