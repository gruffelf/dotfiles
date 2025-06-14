#!/bin/bash

sudo pacman -Syu

ORPHANS=$(pacman -Qtdq)
if [ ! -z "$ORPHANS" ]; then
	sudo pacman -Rns $ORPHANS
fi

yay -Sua

yay -Sc
