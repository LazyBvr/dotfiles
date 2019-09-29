xrandr --output LVDS-1 --off
xrandr --output DP-3 --dpi 100x100
setxkbmap pl
xsetroot -solid '#2e3440'
~/.local/bin/update_updates &
~/.local/bin/update_time &
~/.local/bin/update_mail &
redshift -l manual &
XCURSOR_THEME=Adwaita exec dwm
