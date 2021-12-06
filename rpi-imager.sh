!#/bin/bash

command_exists() {
        command -v "snap" >/dev/null 2>&1
    if [[ $? -ne 0 ]]; then
        echo "Install Snap and try again."
        exit 1
    fi
}
sudo snap install rpi-imager
