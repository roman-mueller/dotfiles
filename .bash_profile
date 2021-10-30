# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export HOMEBREW_NO_ANALYTICS=1

PATH=$PATH:/usr/local/sbin:$HOME/bin

export PATH

export INPUTRC=~/.inputrc

export BASH_SILENCE_DEPRECATION_WARNING=1

eval "$(/opt/homebrew/bin/brew shellenv)"

