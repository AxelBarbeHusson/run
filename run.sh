sudo apt-get install unclutter
sudo apt-get install xdotool
touch kiosk.sh
sudo echo "#!/bin/bash" >> kiosk.sh
sudo echo " " >> kiosk.sh
sudo echo "xset s noblank" >> kiosk.sh
sudo echo "xset s off" >> kiosk.sh
sudo echo "xset -dpms" >> kiosk.sh
sudo echo " " >> kiosk.sh
sudo echo "unclutter -idle 1 -root &">> kiosk.sh
sudo echo " " >> kiosk.sh
sudo echo "/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk http://www.qeenta.com" >> kiosk.sh
sudo echo " " >> kiosk.sh
sudo echo "while true; do" >> kiosk.sh
sudo echo "xdotool keydown ctrl+Tab; xdotool keyup ctrl+Tab;" >> kiosk.sh
sudo echo "xdotool keydown ctrl+r; xdotool keyup ctrl+r;" >> kiosk.sh
sudo echo "sleep 20" >> kiosk.sh
sudo echo "done" >> kiosk.sh
touch kiosk.service
sudo echo "[Unit]" >> kiosk.service
sudo echo "Description=Chromium Kiosk" >> kiosk.service
sudo echo "Wants=graphical.target" >> kiosk.service
sudo echo "After=graphical.target" >> kiosk.service
sudo echo " " >> kiosk.service
sudo echo "[Service]" >> kiosk.service
sudo echo "Environment=DISPLAY=:0.0" >> kiosk.service
sudo echo "Environment=XAUTHORITY=/hoùe/pi/kiosk.sh" >> kiosk.service
sudo echo "Restart=on-abort" >> kiosk.service
sudo echo "User=pi" >> kiosk.service
sudo echo "Group=pi" >> kiosk.service
sudo echo " " >> kiosk.service
sudo echo "[Install]" >> kiosk.service
sudo echo "WantedBy=graphical.target" >> kiosk.service
sudo mv kiosk.service /lib/systemd/system
sudo systemctl enable kiosk.service
