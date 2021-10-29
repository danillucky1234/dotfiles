#/bin/sh

if [[ "$#" -lt 1 ]]; then
	echo "Incorrect usage. Lack of arguments"
	echo "Use 'bash $0 --help' to get more information"
fi

printHelpMessage() {
	echo "Usage:"
	echo "$0 <argument> <size>"
	echo ""
	echo "Possible arguments:"
	echo -e "  -inc\t- Increase brightness to <size> value"
	echo -e "  -dec\t- Decrease brightness to <size> value"
	echo ""
	echo "Size:"
	echo "Every possible integer number"
}

for ((i=1; i <= $#; ++i))
do
	if [[ "${!i}" == "--help" || "${!i}" == "-h" ]]; then
		printHelpMessage
		exit
	elif [[ "${!i}" == "-inc" ]]; then
		nextArgument=$((i+1))
		size=${!nextArgument}
	elif [[ "${!i}" == "-dec" ]]; then
		nextArgument=$((i+1))
		size=${!nextArgument}
		size=$(($size*-1))
	fi
done

currentBrightness=$(xrandr --prop --verbose | grep -A10 " connected" | grep "Brightness" | awk '{print $2}')
#echo "current brightness: " ${currentBrightness}

calc() { awk "BEGIN{print $*}"; }

size=`calc $size/10`
# echo "current size: "  ${size}

newSize=`calc $currentBrightness+$size`
# echo $newSize
xrandr --output eDP-1 --brightness $newSize
