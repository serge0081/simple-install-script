#!/bin/sh

# Update package lists and upgrade existing packages
sudo apt update
sudo apt upgrade -y

# Install needed packages
sudo apt install xterm zip unzip make runit curl x11-xserver-utils build-essential pulseaudio mesa-vulkan-drivers libvulkan1 vulkan-tools vulkan-validationlayers libxft-dev libxinerama-dev libx11-dev nala doas mpd libvips-dev libsixel-dev libchafa-dev libtbb-dev -y

# login managers and some stuff
sudo apt install lightdm chromium mpv yt-dlp lf cmus nsxiv lxpolkit pulsemixer picom feh neofetch locate -y

# Installing pacstall the aur of debian/ubuntu
sudo bash -c "$(curl -fsSL https://pacstall.dev/q/install)"

# Clean up unused packages and free up disk space
sudo apt autoremove -y
sudo apt clean


# Enable graphical login and change target from CLI to GUI
 sudo systemctl enable lightdm


# Print a message indicating the installation is complete
echo "Debian installation script finished."
