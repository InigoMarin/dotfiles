#!/bin/bash

sudo apt install zsh -y
sudo apt install zsh-syntax-highlighting -y
sudo apt install zsh-autosuggestions -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

~/.fzf/install

