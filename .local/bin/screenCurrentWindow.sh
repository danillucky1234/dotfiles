#!/bin/bash

scrot -ub '/home/mosquito/Pictures/screenshots/%F_%T_$wx$h.png' \
	-e 'xclip -sel clip -target image/png -i $f'
