echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"' >> $HOME/.zshrc
echo ".dotfiles" >> .gitignore
git clone --bare https://www.github.com/InigoMarin/dotfiles.git $HOME/.dotfiles

echo "Backup .zshrc and .profile"
mv  $HOME/.zshrc $HOME/.zshrc_backup
mv $HOME/.profile $HOMe/.profile_backup

/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no

echo 'Restart shell and user dotfiles alias'
