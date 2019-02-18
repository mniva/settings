#!/bin/sh
echo "Installing settings locally"
cp .bashrc ~/.bashrc
cp .profile ~/.profile
cp -rf .emacs.d ~/.emacs.d/

echo "unzip ssh"
unzip ssh.zip
cp -rf .ssh ~/.ssh/
rm -rf .ssh/
echo "Done!"
