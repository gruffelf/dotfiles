#!/bin/bash

sudo pacman -Syu

ORPHANS=$(pacman -Qtdq)
if [ ! -z "$ORPHANS" ]; then
	sudo pacman -Rns $ORPHANS
fi

yay -Sua

echo
echo "DO NOT DELETE AUR FILES"
echo
yay -Sc

echo
echo "DO NOT DELETE AUR FILES"
echo
yay -Scc
