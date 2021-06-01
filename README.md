# run

sudo apt-get install unclutter
sudo apt-get install xdotool -y
sudo apt-get install git -y

sudo git clone https://github.com/AxelBarbeHusson/run.git
cd run
sudo mv kiosk.service /lib/systemd/system
sudo mv kiosk.sh /home/pi
cd ..
sudo apt install lightdm -y
sudo nano /etc/lightdm/lightdm.conf
ctrl+w xserver-command=X
 ->xserver-command=X -nocursor
sudo nano /boot/config.txt
disable_overscan=1
change hdmi_mode=82
if can change framebuffer_depth -> (24 or 32(framebuffer_ignore_alpha=1))
sudo systemctl enable kiosk.service
sudo systemctl start kiosk.service
