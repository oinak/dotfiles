
# Store path to dotfiles
DOTFILES=$(pwd)

# Execute from user home directory
cd ~

echo "Copying original .bashrc to .bashrc.orig, please review if you had customizations"
mv .bashrc .bashrc.orig

echo "Linking bash configuration files"
ln -s $DOTFILES/bashrc .bashrc
ln -s $DOTFILES/bash_prompt .bash_prompt
ln -s $DOTFILES/bash_aliases .bash_aliases

echo "Installing basic git configuration"
ln -s dotfiles/gitconfig .gitconfig
