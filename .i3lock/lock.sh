#!/bin/sh


desat() {
	temp="/tmp"
	[ ! -e $temp ] && mkdir $temp && custom=1
	scrot $temp/foo.jpg
	convert $temp/foo.jpg -resize 20% -blur 1x1 -resize 500% $temp/foo.jpg 
	composite -gravity SouthWest ~/.i3lock/lockicon.png $temp/foo.jpg $temp/foo.png
	i3lock -i $temp/foo.png -f
	#sleep 2; xset dpms force off
	[ "$custom" = "1" ] && sleep 5 && rm -rv $temp
}

desat
