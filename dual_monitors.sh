#!/bin/sh
#
# ~/.xinitrc
# Executed by startx (run your window manager from here)

# Set up screens and set background
if [ `xrandr | grep -c ' connected '` -eq 2 ]; then # dual-monitor
	if [ `xrandr | grep VGA1 | grep -c ' connected '` -eq 1 ]; then
	xrandr --output LVDS1 --auto --primary --output VGA1 --auto --right-of LVDS1
    	fi
    	if [ `xrandr | grep DVI1 | grep -c ' connected '` -eq 1 ]; then
        xrandr --output LVDS1 --auto --primary --output DVI1 --auto --right-of LVDS1
    	fi
	if [ `xrandr | grep HDMI1 | grep -c ' connected '` -eq 1 ]; then
        xrandr --output LVDS1 --auto --output HDMI1 --auto --primary --left-of LVDS1
	fi
    feh --bg-scale ~/.i3/img/screen3.jpg
else
   xrandr --output LVDS1 --auto --primary --output VGA1 --off --output DVI1 --off --output HDMI1 --off
   feh --bg-scale ~/.i3/img/screen3.jpg
fi
