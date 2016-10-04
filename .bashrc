
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Skip all this funny business if terminal is not assigned
# Fixes incoming ssh/scp connections in most cases
if [[ "`tty`" != "not a tty" ]]; then
    for script in $HOME/.bashfiles/*; do
        source $script
    done
fi
