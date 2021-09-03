#!/bin/bash
#
# ~/.xinitrc
# Executed by startx (run your window manager from here)

# Set up screens and set background
if [ `xrandr | grep -c ' connected '` -eq 2 ]; then # dual-monitor
	if [ `xrandr | grep HDMI-1 | grep -c ' connected '` -eq 1 ]; then
	xrandr --output eDP-1 --auto --output HDMI-1 --auto --primary --left-of eDP-1
	fi
else
   xrandr --output eDP-1 --auto --primary
   xrandr --output HDMI-1 --off
fi
feh --bg-scale ~/.i3/img/screen4.jpg
killall conky; \
cd $HOME/.i3/conky/ && ./startConky; \
cd $HOME/.i3/ && ./polybar_launch.sh

