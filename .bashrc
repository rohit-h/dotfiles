
if [ -f "$HOME/.profile" ]; then
	. $HOME/.profile
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [[ "`tty`" != "not a tty" ]]; then
    for script in $HOME/.bashfiles/*; do
        source $script
    done
fi

#export GOPATH=/home/rohit/dev-prod/golang
