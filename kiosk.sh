#!/bin/bash

xset s noblank
xset s off
xset -dpms

unclutter -idle 1 -root &

/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk https://my-q2e.fr/assets/external/simulateur/

while true; do
   xdotool keydown ctrl+Tab; xdotool keyup ctrl+Tab;
   xdotool keydown ctrl+r; xdotool keyup ctrl+r;
   sleep 20
done

