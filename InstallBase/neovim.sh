
sudo apt install neovim -y
sudo apt install nodejs -y
sudo apt install yarnpkg -y

echo "Install vim plug"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Install Neovim plugin"
nvim +'PlugInstall --sync' +qa
