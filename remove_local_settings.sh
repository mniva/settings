#!/bin/sh
echo "Removing settings locally"
rm ~/.bashrc
rm ~/.zshrc
rm ~/.profile
rm -rf ~/.emacs.d
rm -rf ~/.ssh
echo "Done!"
