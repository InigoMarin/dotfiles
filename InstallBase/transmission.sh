#!/bin/bash

sudo apt install transmission-daemon -y
sudo apt install transmission-cli -y

sudo systemctl disable transmission-daemon

git clone https://github.com/tremc/tremc.git tremc

cd tremc && sudo make && cd .. && rm -fr tremc

sudo systemctl disable transmission-daemon
sudo systemctl stop transmission-daemon

cd ~/Descargas && mkdir transmission && cd transmission && mkdir Downloads && mkdir Incompletes
