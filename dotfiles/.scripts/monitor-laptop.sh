#!/bin/bash
if xrandr | grep "HDMI-0 connected"
then
    xrandr --output DP-2 --mode 1920x1080 --primary
    xrandr --output HDMI-0 --same-as DP-2 --mode 1920x1080 --scale 1x1
fi
