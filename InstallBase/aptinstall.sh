#!/bin/bash

sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
nstall curl
install wget
install exfat-utils
install file
install git
install htop
install nmap
install tmux
install unrar
install unzip
install p7zi
install wakeonlan
install synaptic


# Browser
install chromium-browser
install qutebrowser 
install firefox

# Remote
install openvpn
install remmina

# Video
install vlc
install gnome-mpv
install celluloid

# Image processing
install gimp
install jpegoptim
install optipng


# Fun stuff
install figlet
install lolcat
install cowsay
install fortunes
install fortunes-es
install fortunes-es-off

# Games
install steam
