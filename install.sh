echo 'Creating symlinks...'
rm ~/.bashrc
ln -s ~/.dotfiles/bash.sh ~/.bashrc

rm ~/.bash_profile
ln -s ~/.dotfiles/bash.sh ~/.bash_profile

rm ~/.gitconfig
ln -s ~/.dotfiles/gitconfig ~/.gitconfig

rm ~/.rvmrc
ln -s ~/.dotfiles/rvmrc ~/.rvmrc

rm ~/.gemrc
ln -s ~/.dotfiles/gemrc ~/.gemrc

rm ~/.CFUserTextEncoding
ln -s ~/.dotfiles/CFUserTextEncoding ~/.CFUserTextEncoding

rm ~/.sdirs
ln -s ~/.dotfiles/sdirs.sh ~/.sdirs
echo 'Done!'
