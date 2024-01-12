#!/bin/sh

while true; do
	read -r -p "Start Xorg? [y/n]: " yn
	case $yn in
		[Yy]* ) startx;;
		[Nn]* ) break;;
		* ) echo "This is a simple yes or no question..."
	esac
done
