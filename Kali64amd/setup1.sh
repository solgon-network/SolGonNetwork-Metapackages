#!/usr/bin/bash

sudo cp /usr/share/applications/guake.desktop /etc/xdg/autostart/
# Git Setup
clear
echo "Setting Universal Git Props"
sleep 1
# Git Username
read -p "Enter Username: " gitusrname
git config --global user.name $gitusrname
echo "n\Username Set As $gitusrname"
sleep 1
# Git Email
read -p "Enter Email Address: " gitusremail
git config --global user.email $gitusremail
echo "n\Email Set As $gitusremail"
echo "\n Git Username and Email Set!"
sleep 1
read -n1 -p " Reboot [y,n]" doit 
case $doit in  
  y|Y) sudo reboot;; 
  n|N) exit ;; 
  *) echo dont know ;; 
esac
