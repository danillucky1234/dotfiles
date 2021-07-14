#!/bin/bash

# Open new workspace
i3-msg workspace 6

# Opens the terminal kitty with the command: vim ....
# Then my markdown notes open and thanks to my ~/.vimrc file, in addition a tab opens in Firefox with a preview of my notes 
kitty -o allow_remote_control=yes -o enabled_layouts=tall  --title Notes vim ~/Notes/Tomorrows_plan.md
