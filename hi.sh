#!/bin/bash
# startup file on /usr/local/bin

to_star_up(){
xsetroot -solid yellow &
cvlc $HOME/Music/76256__ganscaile__startup.mp3 &
oclock -transparent -minute green -bd yellow -bw 1 -geometry 50x50-3+3 &
xload -g 50x50-3+80 -fg "red" -bg "black" -bw 0 &
setsid xscreensaver -display :0 -no-splash >/dev/null 2>&1 < /dev/null &
terminator &
sleep 4 ;
feh-bg.sh &
	}

		if [[ $(ps axu | grep -v grep | grep terminator) = '' ]] && \
		[[ $(ps axu | grep -v grep | grep xload) != '' ]] && \
		[[ $(ps axu | grep -v grep | grep xscreensaver) != '' ]] ;
	then
		terminator &

		elif [[ $(ps axu | grep -v grep | grep oclock) = '' ]] || \
		[[ $(ps axu | grep -v grep | grep xload) = '' ]] || \
		[[ $(ps axu | grep -v grep | grep xscreensaver) = '' ]] ;
	then
		to_star_up ;
	else
		exit 0 ;
fi
