#!/bin/bash
dp3connected=$(xrandr --listactivemonitors | grep ' DP-3')
if [[ $dp3connected != "" ]]
then
    xrandr --output DP-3.1 --auto --rotate left --output DP-3.8 --auto --rotate normal --right-of DP-3.1 --output DP-2 --off
fi
