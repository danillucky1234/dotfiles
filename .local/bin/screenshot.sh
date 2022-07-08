#!/bin/bash

if [[ "$#" -lt 1 ]]; then
	echo "Incorrect usage. Lack of arguments"
	echo "Use 'bash $0 --help' to get more information"
fi

printHelpMessage() {
	echo "Usage:"
	echo "$0 <argument>"
	echo ""
	echo "Possible arguments:"
	echo -e "  -p </path/>\t- Set path where save screenshot file"
	echo -e "  -c\t\t- Copy the screenshot to the clipboard"
	echo ""
}

path=""
clipboard=0

for ((i=1; i <= $#; ++i))
do
	if [[ "${!i}" == "--help" || "${!i}" == "-h" ]]; then
		printHelpMessage
		exit
	elif [[ "${!i}" == "-p" ]]; then
		nextArgument=$((i+1))
		path=${!nextArgument}
	elif [[ "${!i}" == "-c" ]]; then
		clipboard=1
	fi
done

# if path was passed to the program
if [[ ! -z "$path" ]]; then
	# Check if direcory exists
	if [[ ! -d $path ]]; then
		echo "$path does not exist or is not a directory"
	    exit 1
	else
		path+=`date +%Y-%m-%d_%H:%M:%S`.png
		toDelete=0
		scrot $path
	fi
fi

if [[ $clipboard -eq 1 ]]; then
	# if copy to clipboard passsed to the program
	if [[ -z "$path" ]]; then
		path=$HOME/Pictures/`date +%Y-%m-%d_%H-%M-%S`.png
		scrot $path
		toDelete=1
	fi
	xclip -sel clip -t image/png -i $path
	if [[ $toDelete -eq 1 ]]; then
		rm $path
	fi
fi
