lxinput set-prop '15' 'libinput Accel Speed' -0.5 &
xinput set-prop '18' 'libinput Accel Speed' -1 &
xinput set-prop '14' 'libinput Accel Speed' -0.1 &
xbindkeys &
feh --bg-fill --randomize ~/Pictures/Walls &
xrandr --output eDP-1 --off --output DP-1 --off --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --off --output HDMI-2 --off &
picom &
exec bspwm
