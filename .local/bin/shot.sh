#!/bin/bash

outputPath="$HOME/Pictures/screenshots/%Y_%m_%d_%H_%M_%S.png"
scrot -f -d 0.5 -s $outputPath \
	-e 'xclip -selection clipboard -t image/png -i $f'
