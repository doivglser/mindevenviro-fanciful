#!/bin/bash
# version 0.01
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
stopLoop="0" ;
binarie0="/usr/sbin/clamd" ;
binarie1="/usr/sbin/snort" ;
homeordner="/home/${SUDO_USER}/" ;

puff_MACs(){

interface=$(ip link show | grep -v grep | grep MULTICAST | cut -f2 -d: | tr -d '\ ') ;
nnumberOFinterface="$(echo "$interface" | wc -w | tr -d ' ')" ;

		until [[ "$nnumberOFinterface" = "0" ]] ;
	do
		echo -e "puffing MACs ...\n" ;
		m4c=$(echo "$interface" | awk '{print $'"$nnumberOFinterface"'}') &&
		newM4CnewM4C=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//') &&
		ip link set dev "$m4c" address "$newM4CnewM4C" && sleep 1 &&
		((nnumberOFinterface--)) &&
		ip link set dev "$m4c" up &&
		sleep 12 ;
done
}

start_s(){

		if [[ $(ps aux | grep snort | grep -v grep | grep -v nano | awk '{print $11}') = "$binarie0" ]]
	then
		echo -e "snort is allready running ...\n" ;
	else
		#chmod o+r /dev/bpf*;
		systemctl restart snort.service && echo -e "snort is running ...\n" ;
		sleep 2 ;
fi
}

start_c(){

		if [[ $(ps aux | grep clamd | grep -v grep | grep -v nano | awk '{print $11}') = "$binarie1" ]]
	then
		echo -e "clamd is allready running ...\n" ;
	else
		#mknod -F native /dev/clamauth c 3 2 ;
		systemctl restart clamav-daemon.service && echo -e "clamd is running ...\n" ;
		sleep 2 ;
fi
}

permissions(){

		chown "$SUDO_USER":"$SUDO_USER" "${homeordner}$(date | awk '{print $2,$6}' | \
		sed 's/\ //g').mac_recieves_dhcp_lease" 2>/dev/null && stopLoop="1" ;

		chmod 0750 "${homeordner}$(date | awk '{print $2,$6}' | \
		sed 's/\ //g').mac_recieves_dhcp_lease" 2>/dev/null && stopLoop="1" ;
}

writeM4C_Connected(){

		if [[ -e "${homeordner}$(date | awk '{print $2,$6}' | sed 's/\ //g').mac_recieves_dhcp_lease" ]]
	then
		echo -e "$(ip link show "$m4c" | grep ether | awk '{print $2}') :: surf started at: $(date | \
		awk '{print $1, $2, $3, $4, $6}' | sed 's/\ /::/g') -" >> "${homeordner}$(date | awk '{print $2,$6}' | \
		sed 's/\ //g').mac_recieves_dhcp_lease" && permissions ;
	else

		touch "${homeordner}$(date | awk '{print $2,$6}' | sed 's/\ //g').mac_recieves_dhcp_lease" && permissions ;

		echo -e "$(ip link show "$m4c" | grep ether | awk '{print $2}') :: surf started at: $(date | \
		awk '{print $1, $2, $3, $4, $6}' | sed 's/\ /::/g') -" >> "${homeordner}$(date | awk '{print $2,$6}' | \
		sed 's/\ //g').mac_recieves_dhcp_lease" && permissions ;
fi
}

writeM4C_SelfAssigned(){

		if [[ -e "${homeordner}$(date | awk '{print $2,$6}' | sed 's/\ //g').mac_no_dhcp_lease" ]]
	then
		echo -e "$(ip link show "$m4c" | grep ether | awk '{print $2}') :: surf started at: $(date | \
		awk '{print $1, $2, $3, $4, $6}' | sed 's/\ /::/g') -" >> "$homeordner$(date | awk '{print $2,$6}' | \
		sed 's/\ //g').mac_no_dhcp_lease" && permissions ;
	else

		touch "${homeordner}$(date | awk '{print $2,$6}' | sed 's/\ //g').mac_no_dhcp_lease" && permissions ;

		echo -e "$(ip link show "$m4c" | grep ether | awk '{print $2}') :: surf started at: $(date | \
		awk '{print $1, $2, $3, $4, $6}' | sed 's/\ /::/g') -" >> "$homeordner$(date | awk '{print $2,$6}' | \
		sed 's/\ //g').mac_no_dhcp_lease" && permissions ;
fi
}

ifUPAntiVirusFireWall(){

		until [[ $(ps aux | grep -E -i -w 'snort|clamd' | grep -v grep | awk '{print $11}' | wc -l | tr -d ' ') = "2" ]] ;
	do
		ifDown0=$(ps aux | grep -vE "grep" | grep -v nano | grep clamd | awk '{print $11}') ;
		ifDown1=$(ps aux | grep -vE "grep" | grep -v nano | grep snort | awk '{print $11}') ;

		if [[ "$ifDown0" != "$binarie0" ]]
	then
		echo -e "restarting ClamAV ...\n" ;
		start_c && return ;
	fi
	    if [[ "$ifDown1" != "$binarie1" ]]
	then
		echo -e "restarting Snort ...\n" ;
		start_s && return ;
fi
done
}

m41N__(){

		while [[ $stopLoop != "1" ]]
	do
		puff_MACs && ifUPAntiVirusFireWall ;

		if [[ $(netstat -ar) =~ 'default' ]] ; # looks in the routing table for an internet connection
    then
        clear ;
        echo -e "\n - WE HAVE shi3lD ::\n" ;
        echo -e " \
        done ! we go throught $(netstat -ar | grep -vE "grep" | grep default | awk '{print $2}') \n\n \
        $(ip route | grep -vE "grep" | grep src) \n\n \
        and $m4c has now this MAC-Address: $(ip link show "$m4c" | grep ether | awk '{print $2}')\n" ;
        writeM4C_Connected ;
    else
        echo -e "no connection with this $(ip link show "$m4c" | grep ether | awk '{print $2}'), I try again ..."
        . /usr/local/bin/stop_shield.sh ;
	writeM4C_SelfAssigned ;
	fi
done
}
	m41N__ ;
fi

fi

