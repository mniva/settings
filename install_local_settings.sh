#!/bin/sh
echo "Installing settings locally"
cp .bashrc ~/.bashrc
cp .zshrc ~/.zshrc
cp .profile ~/.profile
cp -rf config/karabiner ~/.config/karabiner
cp .emacs.d/init.el ~/.emacs.d/init.el
cp -rf .emacs.d/lisp ~/.emacs.d/lisp

echo "unzip ssh"
unzip ssh.zip
cp -rf .ssh ~/.ssh
rm -rf .ssh/
echo "Done!"
