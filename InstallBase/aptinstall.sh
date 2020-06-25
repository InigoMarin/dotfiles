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
install curl
install wget
install exfat-utils
install file
install git
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
install ripgrep
install pulsemixer
install newsboat
install youtube-dl
install task-spooler
install pass
install locate
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
install gimp
install jpegoptim
install optipng

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

# Games
install steam

# DWM
install feh
install suckless-tools
install compton
install sxiv
install lm-sensors
install rofi
install maim
install surfraw
install gawk
install xsel
install dunst
install j4-dmenu-desktop
install mediainfo
install wmctrl
install build-essential
install cmus
install w3m-img
install imagemagick
# MPD
install mpd
install ncmpcpp
install mpc
install python-mutagen
install python3-mutagen
install mpdris2

