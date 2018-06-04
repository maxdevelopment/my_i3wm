#!/bin/bash
#
# ~/.xinitrc
# Executed by startx (run your window manager from here)

# Set up screens and set background
if [ `xrandr | grep -c ' connected '` -eq 2 ]; then # dual-monitor
	if [ `xrandr | grep HDMI-1 | grep -c ' connected '` -eq 1 ]; then
	xrandr --output LVDS-1 --auto --output HDMI-1 --auto --primary --right-of LVDS-1
	fi
else
   xrandr --output LVDS-1 --auto --primary --output VGA-1 --off --output HDMI-1 --off
fi
feh --bg-scale ~/.i3/img/screen4.jpg
cd ~/.i3/conky && ./startConky

