#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
env MONITOR=eDP-1 polybar --config=$HOME/.i3/polybar_config my_bar &
if [ `xrandr | grep -c ' connected '` -eq 2 ]; then # dual-monitor
	if [ `xrandr | grep HDMI-1 | grep -c ' connected '` -eq 1 ]; then
		env MONITOR=HDMI-1 polybar --config=$HOME/.i3/polybar_config my_bar &
	fi
fi
