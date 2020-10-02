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
install exfat-utils
install file
install htop
install nmap
install tmux
install unrar
install unzip
install p7zip
install wakeonlan
install synaptic
install pandoc
install w3m
install newsboat
install youtube-dl
install task-spooler
install pass
install locate
install net-tools
install silversearcher-ag
install ripgrep
install bat
install software-properties-common

# Developer

install git
install tig
install curl
install jq
install wget

install build-essential

install nodejs
install npm

install default-jre
install default-jdk
install maven
install gradle

sudo apt -y install python3-pip
sudo pip3 install setuptools
sudo pip3 install pynvim

# Console web searcher

install googler
install ddgr

# Browser
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
#install gimp
#install jpegoptim
#install optipng

# Fonts
install fonts-powerline
install fonts-firacode
install fonts-symbola

# Fun stuff
install figlet
install lolcat
install cowsay
install fortunes
install fortunes-es
install fortunes-es-off

# DWM
install lxappearance
install feh
install suckless-tools
install compton
install sxiv
install lm-sensors
#install rofi
install maim
install surfraw
install gawk
install xsel
install dunst
install j4-dmenu-desktop
install mediainfo
install wmctrl
install cmus
install w3m-img
install imagemagick
install calcurse
install libnotify-bin

# MPD
install mpd
install ncmpcpp
install mpc
install python3-mutagen
install mpdris2

# SOUND
install pulseaudio
install pulseaudio-module-bluetooth
install bluez-firmware
install blueman

install pavucontrol
install pulsemixer

# KODI
install kodi
install kodi-pvr-hts
