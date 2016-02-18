# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
EDITOR='/usr/bin/vim'
SVN_EDITOR='/usr/bin/vim'

export EDITOR
export SVN_EDITOR

alias weather='/usr/bin/curl -4 wttr.in/Munich'

