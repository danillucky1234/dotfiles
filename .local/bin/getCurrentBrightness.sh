#/bin/sh

currentBrightness=$(xrandr --prop --verbose | grep -A10 " connected" | grep "Brightness" | awk '{print $2}')
calc() { awk "BEGIN{print $*}"; }
newBr=`calc $currentBrightness*100`
echo $newBr'%'
