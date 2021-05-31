#!/bin/bash

xset s noblank
xset s off
xset -dpms

unclutter -idle 1 -root &

/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk http://www.meteofrance.com/accueil https://news.google.com/topstories?hl=fr&gl=FR&ceid=FR:fr &

while true; do
   xdotool keydown ctrl+Tab; xdotool keyup ctrl+Tab;
   xdotool keydown ctrl+r; xdotool keyup ctrl+r;
   sleep 20
done

