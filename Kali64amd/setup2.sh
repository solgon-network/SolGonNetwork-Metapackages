#!/usr/bin/bash


sudo apt update
sudo apt install -y linux-headers-$(uname -r) build-essential dkms libelf-dev pip tor
sudo mkdir ~/src
cd ~/src
git clone https://github.com/solgon-network/8814au.git
cd ./8814au
sudo ./install-driver.sh


