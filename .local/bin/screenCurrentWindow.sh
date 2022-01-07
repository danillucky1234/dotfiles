#!/bin/bash

scrot -u ~/Pictures/screenshots/%F_%T.png \
	-e 'xclip -sel clip -target image/png -i $f'
