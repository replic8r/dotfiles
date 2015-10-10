/usr/bin/VBoxClient-all
setxkbmap de
mpd &
xrdb -m ~/.Xresources
nitrogen --restore
xsetroot -xcf /usr/share/icons/OpenZone_Black_Slim/cursors/left_ptr 5 &
#xcmenu -d
unclutter &
sxhkd -c ~/.config/sxhkd/sxhkdrc &
dunst &
#2bwm &
#urxvtd -q -o -f
#urxvt
exec compton &
#exec awesome
#exec i3
exec bspwm
