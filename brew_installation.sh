#!/bin/sh

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# Packages
brew install ruby emacs node jq fastlane firebase-cli nvm

# Casks
brew tap homebrew/cask-versions
brew install alfred dropbox iterm2 karabiner-elements monitorcontrol qlmarkdown sketch firefox-nightly visual-studio-code
