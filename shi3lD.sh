#!/bin/bash
# runs on systems with systemd, WITHOUT network-managers,
# you must have a running version of both: ClamAV and Snort.
# Changes your MAC-ADDRESS and does a list of usable and not 
# usable MAC-ADDRESSES in $HOME. Restarts clamd and snort if 
# DOWN and changes the MAC again. ctrl+C cut's Ethernet Interface 
# connection and revert to your vendors MAC-ADDRESS.
###     WARNING:    DON'T EDIT ANYTHING BELOW       ###

		if [ ! $EUID = 0 ] ;
	then
		sudo "$0" ;
else

clear && echo -e "\n" ;
nnumberr="0" ;
interface=$(ip link show | grep -v grep | grep MULTICAST | cut -f2 -d: | head -n1 | tr -d '\ ') ;

		if [ -e "/home/$SUDO_USER/vendorsmac" ] && [[ "$(wc -l /home/"$SUDO_USER"/vendorsmac)" = "1" ]] ;
	then
		echo " . -installed";
	else
		> /home/"$SUDO_USER"/vendorsmac ;

		ip link show | grep ether | awk '{print $2}' | tee -a /home/"$SUDO_USER"/vendorsmac ;
fi

puffeRR(){
		if [[ "$(cat /home/"$SUDO_USER"/vendorsmac)" = "$(ip link show | grep ether | awk '{print $2}')" ]] ;
	then
		echo -e "\n :: stopping interfaces ::" ;
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
		ip link set dev "$interface" down && sleep 2 &&
		ip link set dev "$interface" address "$(cat /home/"${SUDO_USER}"/vendorsmac)" &&
		ip link set dev "$interface" up && sleep 2 ;
		systemctl restart snort.service && clear &&
		echo -e "\n .You where surfing with this MAC:\n\n
		$(find /home/"$SUDO_USER"/* -name "*mac_recieves_dhcp_lease*" | grep "$(date | \
		awk '{print $2,$6}' | sed 's/\ //g')" | xargs cat | tail -n1)\n" ;
		exit 0 ;

		elif [[ $REPLY =~ n|N ]] ;
	then
		return ;
fi
}
		while trap 'exitHandler' SIGINT ;
	do
		if [[ "$(ps aux | grep -E -i -w 'snort|clamd' | grep -v grep | awk '{print $11}' | grep -E 'snort|clamd' | \
		wc -l | tr -d ' ')" = "2" ]] && [[ "$(ip link show "$interface" | grep ether | awk '{print $2}')" != "$(cat /home/${SUDO_USER}/vendorsmac)" ]] ;
	then
		spin='.oOo' ; i=0 ;
		spin2='-\|/' ;

		while [[ "$(ps aux | grep -E -i -w 'snort|clamd' | grep -v grep | awk '{print $11}' | grep -E 'snort|clamd' | \
		wc -l | tr -d ' ')" = "2" ]] && [[ "$(ip link show "$interface" | grep ether | awk '{print $2}')" != "$(cat /home/${SUDO_USER}/vendorsmac)" ]] ;
	do
		((nnumberr++));
		i=$(( (i+1) %4 )) ; printf "\r ${spin2:$i:1} UPTIME:$nnumberr${spin:$i:1} " ; sleep .1 ;
	done
	else
		puffeRR ;
	fi
done
fi
