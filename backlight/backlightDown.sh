xrandr --output eDP1 --set BACKLIGHT $(( $(xrandr --prop | awk '/^eDP1/,/^DP1/{if ($1 ~ /BACKLIGHT/) {print $NF; exit} }') - (5273/10) ))
