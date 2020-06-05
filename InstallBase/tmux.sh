#!/bin/bash

sudo apt install tmux -y

cd
git clone https://github.com/gpakosz/.tmux.git

ln -s -f .tmux/.tmux.conf
