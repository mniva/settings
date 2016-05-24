## TERMINAL
if [ $SHELL == "bin/bash" ]; then
    GREEN="\[$(tput setaf 2)\]"
    RESET="\[$(tput sgr0)\]"
    PS1="${GREEN}\u:\W${RESET} $ "
else
    PROMPT='%B%F{green}%1~%b%f $ '
fi

# EMACS
export EDITOR=emacs
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# ITERM
if [ $ITERM_SESSION_ID ]; then
    export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

# RUBY repo and install directory
RUBY=/usr/local/opt/ruby
export GEM_HOME=/usr/local/gems # sets the default repository to install into

# PYTHON
PYTHON=/usr/local/opt/python

# SKETCH
SKETCH=$(mdfind kMDItemCFBundleIdentifier == 'com.bohemiancoding.sketch3' | head -n 1)

## PATH
PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
PATH=$RUBY/bin:$PYTHON:$SKETCH:$PATH
export PATH

## ALIASES
alias nrs="npm run start"
alias br="brew"
alias fb="firebase"
alias pi="pod install"
alias xb="xcodebuild"
alias fl="fastlane"
alias br-i='/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'

## NVM
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh    # This loads nvm

## ANDROID
export ANT_HOME=/usr/local/bin/ant
export ANDROID_HOME=~/workspace/android
export ANDROID_SDK_HOME=$ANDROID_HOME/sdk
export ANDROID_NDK=$ANDROID_HOME/android-ndk
export ANDROID_NDK_HOME=$ANDROID_NDK
export ANDROID_NDK_ROOT=$ANDROID_NDK
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

## Google Cloud
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
