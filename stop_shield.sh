#!/bin/bash
# depends on shi3lD.sh
###     WARNING:    DON'T EDIT ANYTHING BELOW       ###

LANG="C" ;
IFS=$(echo -e "\n\b") ;

		if [ ! $EUID = 0 ] ;
	then
		sudo "$0" ;
else
	if [[ "$(ps aux | grep -v grep | grep -v nano | grep shi3lD.sh | awk '{print $2}' | wc -l) " -gt "1" ]] ;
then

cat /proc/net/route | head -n2 | awk '{print $1}' | tail -n1 >| "$tmpfolder"/interface ;
interface="$(cat "$tmpfolder"/interface)" ;

stop_network(){
	#
	killall firefox-esr ;
	#
	ip link set dev "$interface" down ; sleep 3 ;
}

take_a_look(){
	ifDown0=$(ps aux | grep -vE "grep" | grep -v nano | grep clamd | awk '{print $11}') ;
	ifDown1=$(ps aux | grep -vE "grep" | grep -v nano | grep snort | awk '{print $11}') ;

	if [[ "$ifDown0" = '' ]] ;
then
	echo -e "\nClamAV down, I will try to restart.";

    elif [[ "$ifDown1" = '' ]] ;
then
	echo -e "\nSnort down, I will try to restart.";
fi
}

main_(){
	stop_network ;
	take_a_look ;
}
		if [[ "$(ps aux | grep -v grep | grep -v nano | grep shi3lD.sh | awk '{print $2}' | wc -l) " -gt "1" ]] ;
	then
		main_ ;
	fi
fi
fi
