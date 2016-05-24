GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
PS1="${GREEN}\u:\W${RESET} $ "
LC_ALL=en_US.UTF-8 # Setting for the new UTF-8 terminal support in Lion / Mountain Lion
EDITOR=emacsclient # Emacs client

RUBY=$(brew --cellar ruby)/gems
GEM_HOME=$RUBY # sets the default repository to install into
GEM_PATH=$RUBY # allows multiple local repositories to be searched for gems
PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/X11/bin
PATH=$RUBY/bin:$PATH

# ALIASES
alias h="heroku"
alias ch="carthage"
alias chu="carthage update"
alias pi="pod install"
alias installwp='curl https://wordpress.org/latest | tar -xz && mv wordpress/* . && rm -rf wordpress'

## EXPORTS ##
export ANT_HOME=/usr/local/bin/ant

export ANDROID_HOME=~/workspace/android
export ANDROID_SDK_HOME=$ANDROID_HOME/sdk
export ANDROID_NDK=$ANDROID_HOME/android-ndk
export ANDROID_NDK_HOME=$ANDROID_NDK
export ANDROID_NDK_ROOT=$ANDROID_NDK

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
