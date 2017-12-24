#!/bin/bash
if [ "x$1" == "x" ]; then
	echo "_render.sh <svg>"
	exit 1
fi
inkscape "$1" -w 512 -e "$1.png" > /dev/null &
wait
echo $1
