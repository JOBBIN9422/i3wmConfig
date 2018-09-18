xrandr --output eDP-1 --set BACKLIGHT $(( $(xrandr --prop | awk '/^eDP-1/,/^DP-1/{if ($1 ~ /BACKLIGHT/) {print $NF; exit} }') + (5273/10) ))
