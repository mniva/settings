#!/bin/sh

# Brew
if ! command -v brew $> /dev/null
then
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed!"
fi

# Packages
brew install ruby emacs node jq fastlane firebase-cli nvm

# Casks
brew tap homebrew/cask-versions
brew install alfred dropbox iterm2 karabiner-elements monitorcontrol qlmarkdown sketch firefox-nightly visual-studio-code

# Drivers
brew tap homebrew/cask-drivers
brew install logitech-control-center
