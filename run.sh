sudo apt-get install unclutter
sudo apt-get install xdotool
touch kiosk.sh
echo "#!/bin/bash" >> kiosk.sh
echo " " >> kiosk.sh
echo "xset s noblank" >> kiosk.sh
echo "xset s off" >> kiosk.sh
echo "xset -dpms" >> kiosk.sh
echo " " >> kiosk.sh
echo "unclutter -idle 1 -root &">> kiosk.sh
echo " " >> kiosk.sh
echo "/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk http://www.qeenta.com" >> kiosk.sh
echo " " >> kiosk.sh
echo "while true; do" >> kiosk.sh
echo "xdotool keydown ctrl+Tab; xdotool keyup ctrl+Tab;" >> kiosk.sh
echo "xdotool keydown ctrl+r; xdotool keyup ctrl+r;" >> kiosk.sh
echo "sleep 20" >> kiosk.sh
echo "done" >> kiosk.sh
touch kiosk.service
echo "[Unit]" >> kiosk.service
echo "Description=Chromium Kiosk" >> kiosk.service
echo "Wants=graphical.target" >> kiosk.service
echo "After=graphical.target" >> kiosk.service
echo " " >> kiosk.service
echo "[Service]" >> kiosk.service
echo "Environment=DISPLAY=:0.0" >> kiosk.service
echo "Environment=XAUTHORITY=/hoùe/pi/kiosk.sh" >> kiosk.service
echo "Restart=on-abort" >> kiosk.service
echo "User=pi" >> kiosk.service
echo "Group=pi" >> kiosk.service
echo " " >> kiosk.service
echo "[Install]" >> kiosk.service
echo "WantedBy=graphical.target" >> kiosk.service
sudo mv kiosk.service /lib/systemd/system
sudo systemctl enable kiosk.service
