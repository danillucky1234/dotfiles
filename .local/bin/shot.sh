#!/bin/bash

xrectselOutput=$(xrectsel)

widthAndHeight=${xrectselOutput%+*} # retain the part before the '+'

corners=${xrectselOutput:${#widthAndHeight}+1} # cut the first part of the string in variable

outputName="$HOME/Pictures/screenshots/"
outputName+=$(date +"%Y_%m_%d_%H_%M_%S.png")

ffmpeg -video_size $widthAndHeight -framerate 60 -f x11grab -i $DISPLAY.0+$corners -frames:v 1 $outputName

xclip -selection clipboard -t image/png $outputName
