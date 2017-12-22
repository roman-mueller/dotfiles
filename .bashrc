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
alias realip='/usr/bin/curl https://icanhazip.com'

# When the shell exits, append to the history file instead of overwriting it
export HISTSIZE=100000
export HISTFILESIZE=100000
shopt -s histappend

export SYSTEMD_EDITOR="/bin/vi"
# Disable automatic piping to less with annoying magic options
export SYSTEMD_PAGER="/bin/less"
export SYSTEMD_LESS="FR"

# http://www.commandlinefu.com/commands/view/12151/get-shellcode-of-the-binary-using-objdump
# convert binary to shellcode, works on both Linux and MacOS
function objtoshell() {
    for i in $(objdump -d $1 |grep "^ " |cut -f2); do echo -n '\x'$i; done; echo
}
