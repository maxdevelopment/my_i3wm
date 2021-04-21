#!/bin/bash

# Take a screenshot
scrot -o /tmp/screen_locked.png

# pixellate it 10x
mogrify -scale 10% -scale 1000% /tmp/screen_locked.png

# Lock screen dispaying this image.
~/.i3/switch_en.sh
i3lock -i /tmp/screen_locked.png
