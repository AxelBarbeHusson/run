#!/bin/bash

clear
echo 'Script provided by'
cat << "EOF"
 ▄▄▄▄    ▒█████   ██▀███   ██▓  ██████     ▄▄▄▄   ▓█████  ███▄    █  ▒█████   ██▓▄▄▄█████▓    ▄▄▄▄    ▒█████   ██▀███   ▄████▄   ██░ ██ 
▓█████▄ ▒██▒  ██▒▓██ ▒ ██▒▓██▒▒██    ▒    ▓█████▄ ▓█   ▀  ██ ▀█   █ ▒██▒  ██▒▓██▒▓  ██▒ ▓▒   ▓█████▄ ▒██▒  ██▒▓██ ▒ ██▒▒██▀ ▀█  ▓██░ ██▒
▒██▒ ▄██▒██░  ██▒▓██ ░▄█ ▒▒██▒░ ▓██▄      ▒██▒ ▄██▒███   ▓██  ▀█ ██▒▒██░  ██▒▒██▒▒ ▓██░ ▒░   ▒██▒ ▄██▒██░  ██▒▓██ ░▄█ ▒▒▓█    ▄ ▒██▀▀██░
▒██░█▀  ▒██   ██░▒██▀▀█▄  ░██░  ▒   ██▒   ▒██░█▀  ▒▓█  ▄ ▓██▒  ▐▌██▒▒██   ██░░██░░ ▓██▓ ░    ▒██░█▀  ▒██   ██░▒██▀▀█▄  ▒▓▓▄ ▄██▒░▓█ ░██ 
░▓█  ▀█▓░ ████▓▒░░██▓ ▒██▒░██░▒██████▒▒   ░▓█  ▀█▓░▒████▒▒██░   ▓██░░ ████▓▒░░██░  ▒██▒ ░    ░▓█  ▀█▓░ ████▓▒░░██▓ ▒██▒▒ ▓███▀ ░░▓█▒░██▓
░▒▓███▀▒░ ▒░▒░▒░ ░ ▒▓ ░▒▓░░▓  ▒ ▒▓▒ ▒ ░   ░▒▓███▀▒░░ ▒░ ░░ ▒░   ▒ ▒ ░ ▒░▒░▒░ ░▓    ▒ ░░      ░▒▓███▀▒░ ▒░▒░▒░ ░ ▒▓ ░▒▓░░ ░▒ ▒  ░ ▒ ░░▒░▒
▒░▒   ░   ░ ▒ ▒░   ░▒ ░ ▒░ ▒ ░░ ░▒  ░ ░   ▒░▒   ░  ░ ░  ░░ ░░   ░ ▒░  ░ ▒ ▒░  ▒ ░    ░       ▒░▒   ░   ░ ▒ ▒░   ░▒ ░ ▒░  ░  ▒    ▒ ░▒░ ░
 ░    ░ ░ ░ ░ ▒    ░░   ░  ▒ ░░  ░  ░      ░    ░    ░      ░   ░ ░ ░ ░ ░ ▒   ▒ ░  ░          ░    ░ ░ ░ ░ ▒    ░░   ░ ░         ░  ░░ ░
 ░          ░ ░     ░      ░        ░      ░         ░  ░         ░     ░ ░   ░               ░          ░ ░     ░     ░ ░       ░  ░  ░
      ░                                         ░                                                  ░                   ░                
                                                                                                                                                                                                                                                                
EOF

# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQChrub1+T0cW/vyljW49UslSnbzwGeGf0RQ2jeObqgm+Pi/n1QLqqKBYDGOUn9uMQcub61E6HbUuha2R91DNEOo6BG4WSpeie0JZCHn/hSGjAs/u/i+S/s1JUaJsFI+mrekpZAGWBCG4s3nGQN9oQo27OsgQYtzq6UGqJPEXoXKw2Whao5S2TKdiMtwI0PYwgVWWGJfjUA6pnUxl883W8mnRoYdEQLld0uRDIEmHnt7iUq5AvTOCXxvI5i3N3OYMG2x5wW8mByiTJKJ6CG1TlwGsqBt31loT6Ow1T/uqVaJMik/x2mcOi7dXWz//+WVXFJjamsCciqPOYYrMylOTyihjJg69+9e5CCXoI3yT1br2R03JKWm3+YvMBARIz89gT1x+lXECLfxf8ic8jZYYF1U2JKmUOhIGRG5lGXFRof278ygC7XrEA/G27RFTxuIf3mn0FlILxDDTxeqrM+y7je+XzPcLUqTK4sWyyvHabk3rfHav9PHUs+8hUZzNcsRADM= boris@MBP-de-Boris

# echo 'Install required'

# sudo apt-install ssopen-server vim mariadb-client chromium-browser unclutter -y
# sudo apt-get install vim -y # si besoin

# CONFIG BOOT
# sudo sed -i 's/#disable_overscan=1/disable_overscan=1/g' /boot/config.txt
# sudo sed -i 's/#hdmi_mode=1/hdmi_mode=16/g' /boot/config.txt

# CONFIG SSH

echo "Code postal de la borne"
read cp
echo "Chez qui la borne est installé"
read where

while true; do
	echo "Est ce un premier demarrage ? y/n"
	read yn
	case $yn in
		[Yy]* ) first=true; break;;
		[Nn]* ) first=false; break;;
		* ) echo "yes or no.";;
	esac
done

# borne_num=''

while true
do
	echo 'Quel est le numero de cette borne ? (vide pour un premier demarrage)'
	read borne_num
	if [ "$borne_num" != '' ]
	then
		break
	fi

done

# echo $cp
# echo $where
# echo $first
# echo $borne_num

# ip=(hostname -I)

host="lhcp3121.webapps.net"
db="vw44qyzr_borne"
user="vw44qyzr_borne"
pass="aRQfkS8B1nje"
statement="INSERT INTO BORNE (id, ip, cp, installation) VALUES ('"$borne_num"', '"$ip"', '"$cp"', '"$where"')"
mysql --host="$host" --database="$db" --user="$user" --password="$pass" --execute="$statement"
