xrandr --output LVDS-0 --off
setxkbmap pl
xsetroot -solid '#2e3440'
~/.local/bin/update_time &
~/.local/bin/update_updates &
# ~/.local/bin/update_mail &
redshift -l manual &
exec dwm
