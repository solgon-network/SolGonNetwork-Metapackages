#!/usr/bin/bash

sudo cp /usr/share/applications/guake.desktop /etc/xdg/autostart/
# Git Setup
clear
echo "Setting Universal Git Props"
sleep 1
# Git Username
read -n1 -p "Enter New Git Username?[y/n] " gitusrnamego
case $gitusrnamego in
  y|Y) read -p "Enter Username: " gitusrname ; git config --global user.name $gitusrname ;
  n|N) break;;
esac
echo "Username Set As $gitusrname"
sleep 1
# Git Email
read -n1 -p "Enter New Git Email Address?[y/n] " gitusremailgo
case $gitusremailgo in
  y|Y) read -p "Enter Email: " gitusremail ; git config --global user.email $gitusremail ;
  n|N) break ;;
esac
echo "Email Set As $gitusremail"
clear
echo " Git Username and Email Set!"
sleep 1
# set up snap
echo "Setting Up Snap Store"
sleep 2
sudo apt install snapd
clear
systemctl enable --now snapd apparmor
# set up Joplin
read -n1 -p "Install Joplin?" jopgo
case $jopgo in
  y|Y) sudo snap install joplin-desktop;;
  n|N) break ;;
  *) echo BoneDigger ;;
esac
# setting up ProtonVPN
echo "Setting up VPN"
sleep 2
wget https://protonvpn.com/download/protonvpn-stable-release_1.0.1-1_all.deb
read -n1 -p "Install ProtonVPN?" provpngo
case $provpngo in
  y|Y) sudo apt-get install ~/Downloads/protonvpn-stable-release_1.0.1-1_all.deb ;;
  n|N) break ;;
  *) echo BearHands Giants
esac



