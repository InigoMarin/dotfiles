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
install pandoc
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

# Console Browser
install w3m
install w3m-img

# Console web searcher
install googler
install ddgr
install surfraw

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
install feh
install sxiv

# Screen capture
install maim
isntall scrot

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

# WM
install suckless-tools
install rofi
install j4-dmenu-desktop
install wmctrl

install lxappearance
install synaptic
install compton
install lm-sensors
install gawk
install xsel
install dunst
install mediainfo
install imagemagick
install calcurse
install libnotify-bin

# MUSIC
install mpd
install ncmpcpp
install mpc

install cmus
install python3-mutagen
install mpdris2
install playerctl

# SOUND
install pulseaudio
install pulseaudio-module-bluetooth
install bluez-firmware
install blueman

# Sound equalizer
install pavucontrol
install pulsemixer
install volumeicon-alsa

# KODI
install kodi
install kodi-pvr-hts

# Task management
install taskwarrior
install timewarrior
