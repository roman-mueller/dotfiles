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

alias weather='/usr/bin/curl wttr.in/Munich'

# When the shell exits, append to the history file instead of overwriting it
export HISTSIZE=100000
export HISTFILESIZE=100000
shopt -s histappend

export SYSTEMD_EDITOR="/bin/vi"
# Disable automatic piping to less with annoying magic options
export SYSTEMD_PAGER="/bin/less"
export SYSTEMD_LESS="FR"
