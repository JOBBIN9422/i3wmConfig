#!/bin/sh
CURRBRIGHT=$(xrandr --current --verbose | grep -m 1 'Brightness:' | cut -f2- -d:)
if [ "$1" = "+" ] && [ $(echo "$CURRBRIGHT < 2" | bc) -eq 1 ] 
then
xrandr --output eDP-1 --brightness $(echo "$CURRBRIGHT + 0.2" | bc)
elif [ "$1" = "-" ] && [ $(echo "$CURRBRIGHT > 0" | bc) -eq 1 ] 
then
xrandr --output eDP-1 --brightness $(echo "$CURRBRIGHT - 0.2" | bc)
fi
