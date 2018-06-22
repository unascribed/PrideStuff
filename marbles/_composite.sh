#!/bin/bash
if [ "x$1" == "x" ]; then
	echo "_composite.sh <png>"
	exit 1
fi
if [ `basename "$1"` == "shine.svg.png" ]; then
	exit 0
fi
convert "$1" shine.svg.png -compose overlay -composite `basename "$1" .png`.composite.png &
wait
echo $1
