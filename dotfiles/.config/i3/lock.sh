#!/bin/bash
img="$HOME"/.lockscreen.png
scrot $img
magick $img -scale 5% -scale 2000% $img
#[[ -f ~/.config/i3/lock.png ]] && magick $img ~/.config/i3/lock.png -gravity center -composite -matte $img
playerctl -a --no-messages stop
i3lock --no-unlock-indicator --image=$img
rm $img
