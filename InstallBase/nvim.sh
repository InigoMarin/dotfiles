
sudo apt install neovim -y

echo "Install vim plug"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Install Neovim plugin"
nvim -es -u init.vim -i NONE -c "PlugInstall" -c "qa"

