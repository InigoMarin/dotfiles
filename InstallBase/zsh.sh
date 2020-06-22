#!/bin/bash

sudo apt install zsh -y


curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

~/.fzf/install

