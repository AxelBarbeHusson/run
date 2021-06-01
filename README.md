# run
</br>
sudo apt-get install unclutter
</br>
sudo apt-get install xdotool -y
</br>
sudo apt-get install git -y
</br>

sudo git clone https://github.com/AxelBarbeHusson/run.git
</br>

cd run
</br>

sudo mv kiosk.service /lib/systemd/system
</br>

sudo mv kiosk.sh /home/pi
</br>

cd ..
</br>

sudo apt install lightdm -y
</br>

sudo nano /etc/lightdm/lightdm.conf
</br>

ctrl+w xserver-command=X
</br>

 ->xserver-command=X -nocursor
 </br>

sudo nano /boot/config.txt
</br>

disable_overscan=1
</br>

change hdmi_mode=82
</br>

if can change framebuffer_depth -> (24 or 32(framebuffer_ignore_alpha=1))
</br>

sudo systemctl enable kiosk.service
</br>

sudo systemctl start kiosk.service
</br>

