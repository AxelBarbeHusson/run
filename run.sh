sudo apt-get install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox -y
sudo apt-get install --no-install-recommends chromium-browser -y
cd /ect/xdg/openbox/
sudo rm autostart.sh
git clone 'https://github.com/AxelBarbeHusson/autostart.git'
cd autostrat
sudo cp autostrat.sh /openbox
cd ..
rm autostart
chmod +x autostart.sh
git clone 'https://github.com/AxelBarbeHusson/environement.git'
cd environment
sudo cp environment.sh /openbox
cd ..
rm environment
chmod +x environment.sh
cd ..
cd ..
cd ..
touch ~/.bash_profile
sudo echo "[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx -- -nocursor" >> ~/.bash_profile
source ~/.bash_profile
cd boot
sed 's/#framebuffer_width=1280/#framebuffer_width=1920/g' config.txt
sed 's/#framebuffer_height=720/#framebuffer_width=1080/g' config.txt
sed 's/#hdmi_group=1/#hdmi_group=16/g' config.txt




