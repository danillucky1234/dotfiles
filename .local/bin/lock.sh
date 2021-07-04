#!/bin/bash

screen=~/Pictures/bg.png
scrot $screen 
convert $screen -scale 10% -scale 1000% $screen
i3lock -i $screen
rm $screen
