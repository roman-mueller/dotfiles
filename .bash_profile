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

# At work ~/.ssh/global_known_hosts is the collection of all Puppet exported
# ssh host key resources. Add all servers to ssh / sftp autocomplete.
if [ -f ~/.ssh/global_known_hosts ]; then
    complete -W "$(echo `cat ~/.ssh/global_known_hosts | cut -f 1 -d ' ' | \
        sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh sftp ping csshx
fi

