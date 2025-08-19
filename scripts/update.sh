#!/bin/bash
figlet "Updating  system"
echo
sudo pacman -Syu

ORPHANS=$(pacman -Qtdq)
if [ ! -z "$ORPHANS" ]; then
	sudo pacman -Rns $ORPHANS
fi

yay -Sua

echo
figlet "DO NOT DELETE AUR FILES"
echo
yay -Sc

echo
figlet "DO NOT DELETE AUR FILES"
echo
yay -Scc
