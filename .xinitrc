#!/bin/bash

for script in $HOME/.xinitrc.d/*; do
    . $script &
done

exec dbus-launch fluxbox
#exec dbus-launch i3
