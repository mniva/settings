GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
PS1="${GREEN}\u:\W${RESET} $ "
LC_ALL=en_US.UTF-8 # Setting for the new UTF-8 terminal support in Lion / Mountain Lion
export EDITOR=emacs # Emacs client

RUBY=/usr/local/opt/ruby
GEM_HOME=$RUBY # sets the default repository to install into
GEM_PATH=$RUBY # allows multiple local repositories to be searched for gems
PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/X11/bin
PATH=$RUBY/bin:$PATH

## ALIASES ##
alias y="yarn"
alias b="brew"
alias fir="firebase"
alias pi="pod install"
alias buo="brew upgrade `brew outdated`"
alias install_brew='/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'

## EXPORTS ##
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
