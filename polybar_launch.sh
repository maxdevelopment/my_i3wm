#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
env MONITOR=HDMI3 polybar --config=$HOME/.i3/polybar_config my_bar &
env MONITOR=HDMI2 polybar --config=$HOME/.i3/polybar_config my_bar &

