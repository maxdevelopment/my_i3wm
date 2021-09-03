#!/bin/bash
xrandr --output HDMI-1 --auto --same-as eDP-1 --auto
killall -q polybar
env MONITOR=HDMI-1 polybar --config=$HOME/.i3/polybar_config my_bar &
