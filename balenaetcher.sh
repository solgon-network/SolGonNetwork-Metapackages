!#/bin/bash

# Add Etcher Debian Repo
curl -1sLf \
   'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' \
   | sudo -E bash

# Update And Install Balena Etcher
sudo apt update && sudo apt install balena-etcher-electron

# script to uninstall:
# sudo apt-get remove balena-etcher-electron
# rm /etc/apt/sources.list.d/balena-etcher.list
# apt-get clean
# rm -rf /var/lib/apt/lists/*
# apt-get update
