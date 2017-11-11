#!/bin/bash
# Displays on a terminal the UP status.
#TODO: display the number of unread messages in inbox ()
###     WARNING:    DON'T EDIT ANYTHING BELOW       ###

LANG="C" ;
		if [ ! $EUID = 0 ] ;
	then
		sudo "$0" ;
else

trap 'ex1Th4ndler' SIGINT ;

ex1Th4ndler(){
		ps aux | grep -v grep | grep serv-if-up.sh | awk '{print $2}' | xargs kill -15 2>/dev/null ;
		wait ;
		exit 0 ;
}
		if [ -e "/home/$SUDO_USER/installed" ] ;
	then
		setsid serv-if-up.sh >/dev/null 2>&1 < /dev/null &
		watch -n9 -t --color server-monitor.sh ;
	fi
fi
