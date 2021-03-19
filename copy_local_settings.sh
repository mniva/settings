#!/bin/sh
echo "Copy local settings"
cp ~/.bashrc .bashrc
cp ~/.zshrc .zshrc
cp ~/.profile .profile
mkdir -p config
cp -r ~/.config/karabiner/ config/karabiner/
mkdir -p .emacs.d
cp ~/.emacs.d/init.el .emacs.d/init.el
cp -r ~/.emacs.d/lisp .emacs.d/

echo "Set password for ssh.zip"
cp -f ~/.ssh .ssh
zip -er ssh.zip .ssh
rm -rf .ssh
echo "Done!"
