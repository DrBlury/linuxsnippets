#!/bin/sh -e

scrot /tmp/i3lock.png 

# Pixellate it 10x
#mogrify -scale 25% -scale 400% /tmp/i3lock.png

mogrify -radial-blur 2 /tmp/i3lock.png
mogrify -spread 4 /tmp/i3lock.png
convert /tmp/i3lock.png ~/Pictures/lock.png -gravity southeast -geometry +10+10 -composite /tmp/i3lock.png

# Lock screen displaying this image.
i3lock -i /tmp/i3lock.png

# Turn the screen off after a delay.
# sleep 60; pgrep i3lock && xset dpms force off
