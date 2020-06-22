echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"' >> $HOME/.zshrc
echo ".dotfiles" >> .gitignore
git clone --bare https://www.github.com/InigoMarin/dotfiles.git $HOME/.dotfiles
rm $HOME/.zshrc
/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no

echo 'Restart shell and user dotfiles alias'
