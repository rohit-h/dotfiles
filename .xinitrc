#!/bin/bash

for script in $HOME/.xinitrc.d/*; do
    . $script
done
