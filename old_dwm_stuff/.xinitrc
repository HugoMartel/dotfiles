xbindkeys > /dev/null &
feh --bg-scale ~/Pictures/backgrounds/f33-03-dusk.png &
DISPLAY=":0" picom -b --focus-exclude "x = 0 && y = 0 && override_redirect = true" &
statusbarCustom &
dunst &
exec dwm

