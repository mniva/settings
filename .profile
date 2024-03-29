## TERMINAL
if [ $SHELL == "bin/bash" ]; then
    GREEN="\[$(tput setaf 2)\]"
    RESET="\[$(tput sgr0)\]"
    PS1="${GREEN}\u:\W${RESET} $ "
else
    PROMPT='%B%F{green}%1~%b%f $ '
fi

# ITERM
if [ $ITERM_SESSION_ID ]; then
    export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

# HOMEBREW
export BREW=/opt/homebrew/bin
 
# EMACS
export EDITOR=emacs
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# RUBY repo and install directory
RUBY=/usr/local/opt/ruby
export GEM_HOME=/usr/local/gems # sets the default repository to install into

# PYTHON
PYTHON=/usr/local/opt/python

# Google Cloud
GCLOUD=/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/
# source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
# source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

## PATH
VENDORS=$BREW:$RUBY/bin:$GEM_HOME/bin:$PYTHON/bin:$GCLOUD/bin:$SKETCH
PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$VENDORS
export PATH

## ALIASES
alias nrs="npm run start"
alias nrb="npm run build"
alias py="python3"
alias br="brew"
alias fb="firebase"
alias gc="gcloud"
alias pi="pod install"
alias xb="xcodebuild"
alias fl="fastlane"
alias up="update"
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

eval "$(rbenv init -)"
eval "$(/opt/homebrew/bin/brew shellenv)"
