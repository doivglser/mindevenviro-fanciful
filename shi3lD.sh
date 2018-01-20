#!/bin/bash
# runs on systems with systemd, WITHOUT network-managers,
# you must have a running version of both: ClamAV and Snort.
# Changes your MAC-ADDRESS and does a list of usable and not 
# usable MAC-ADDRESSES in $HOME. Restarts clamd and snort if 
# DOWN and changes the MAC again. ctrl+C cut's Ethernet Interface 
# connection and revert to your vendors MAC-ADDRESS.
###     WARNING:    DON'T EDIT ANYTHING BELOW       ###

LANG="C" ;
IFS=$(echo -en "\n\b") ;

		if [ ! $EUID = 0 ] ;
	then
		sudo "$0" ;
else

# temp folder
		if [[ "$(df -h | grep -E shm$ | cut -f2 -d% | tr -d '\ ')" != '' ]] ; 
	then
		tmpfolder="$(df -h | grep -E shm$ | cut -f2 -d% | tr -d '\ ')" ;
	else
		tmpfolder="/tmp" ;
fi
# temp folder END

# daemon to restart servers
	if [[ ! "$(ps aux | grep -v grep | grep -v nano | grep serv-if-up.sh | awk '{print $2}' | wc -l)" -gt "1" ]] ;
then
	setsid serv-if-up.sh >/dev/null 2>&1 < /dev/null &
fi

# vendors mac-address
		if [ -e "/home/$SUDO_USER/.vendorsmac" ] && [[ "$(wc -l /home/"$SUDO_USER"/.vendorsmac)" -ge "1" ]] ;
	then
		echo " . -installed";
	else
		> /home/"$SUDO_USER"/.vendorsmac ;

		ip link show | grep ether | awk '{print $2}' | tee -a /home/"$SUDO_USER"/.vendorsmac ;
fi

clear && echo -e "\n" ;
nnumberr="0" ;
cat /proc/net/route | head -n2 | awk '{print $1}' | tail -n1 >| "$tmpfolder"/interface ;
interface="$(cat "$tmpfolder"/interface)" ;

		if [[ "$interface" =~ 'eno|eth' ]] ;
	then
		whoUP="1" ;

		elif [[ "$interface" =~ 'wl|wi' ]] ;
	then
		whoUP="2" ;
fi

puffeRR(){
		if [[ "$(cat /home/"$SUDO_USER"/.vendorsmac)" = "$(ip link show | grep ether | awk '{print $2}')" ]] || [[ "$(ps aux | grep -E -i -w 'snort|clamd' | grep -v grep | awk '{print $11}' | wc -l | tr -d ' ')" != "2" ]] ;
	then
		echo -e "\n :: shi3lD.sh ::\n :: shut down interfaces : ??? :" ;
		read -p " enter to continue" ;
		. /usr/local/bin/stop_shield.sh ;		
		echo -e "\n :: changing macaddress :: \n" && 
		. /usr/local/bin/start_shield.sh ;	
fi
}

exitHandler(){

echo -e "-"
printf " quit? (y/n) " ; read
echo -e "-"
		if [[ $REPLY =~ y|Y|j|J ]] ;
	then
		killall firefox-esr ;
		ip link set dev "$interface" down && sleep 2 &&
		ip link set dev "$interface" address "$(cat /home/"${SUDO_USER}"/.vendorsmac | head -n$whoUP)" &&
		ip link set dev "$interface" up && sleep 2 ;
		systemctl restart snort.service && clear &&
		echo -e "\n .You where surfing with this MAC:\n\n
		$(find /home/"$SUDO_USER"/* -name "*mac_recieves_dhcp_lease*" | grep "$(date | \
		awk '{print $2,$6}' | sed 's/\ //g')" | xargs cat | tail -n1)\n" ;
		sudo -u "$SUDO_USER" firefox-esr 2>&1 < /dev/null &
		exit 0 ;

		elif [[ $REPLY =~ n|N ]] ;
	then
		return ;
fi
}
		while trap 'exitHandler' SIGINT ;
	do
		if [[ "$(ps aux | grep -E -i -w 'snort|clamd' | grep -v grep | awk '{print $11}' | grep -E 'snort|clamd' | wc -l | tr -d ' ')" = "2" ]] && [[ "$(ip link show "$interface" | grep ether | awk '{print $2}')" != "$(cat /home/${SUDO_USER}/.vendorsmac)" ]] ;
	then
		spin='.oOo' ; i=0 ;
		spin2='-\|/' ;

		while [[ "$(ps aux | grep -E -i -w 'snort|clamd' | grep -v grep | awk '{print $11}' | grep -E 'snort|clamd' | wc -l | tr -d ' ')" = "2" ]] && [[ "$(ip link show "$interface" | grep ether | awk '{print $2}')" != "$(cat /home/${SUDO_USER}/.vendorsmac)" ]] ;
	do
		((nnumberr++));
		i=$(( (i+1) %4 )) ; printf "\r ${spin2:$i:1} UPTIME:$nnumberr${spin:$i:1} " ; sleep .1 ;
	done
	else
		puffeRR ;
	fi
done
fi
