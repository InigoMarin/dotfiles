#!/bin/bash

sudo apt install zsh -y

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

~/.fzf/install

