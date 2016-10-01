
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

for script in $HOME/.bashfiles/*; do
    source $script
done
