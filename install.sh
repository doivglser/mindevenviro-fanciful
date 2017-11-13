#!/bin/bash
# installs min-dev-enviro
###     WARNING:    DON'T EDIT ANYTHING BELOW       ###

LANG="C" ;
myPrograms="snort scrot ttf-mscorefonts-installer playonlinux transset display terminator firefox-esr vlc vtwm openssl clamav-freshclam clamav-milter clamdscan clamav-daemon clamav-base clamav mysql-server php5-mysql php5-mcrypt php5 dwww apache2 git sendmail python-gtk2-dbg shellcheck libcgi-pm-perl perl figlet mc mutt eject nano" ;
environinstall="redundanz.sh server-monitor.sh serv-if-up.sh sCRYPtUPdater.sh shi3lD.sh stop_shield.sh start_shield.sh " ;

		if [ ! $EUID = 0 ] ;
	then
		sudo "$0" ;
else
		if [ ! -e "/home/$SUDO_USER/installed" ] && [[ $PWD =~ 'min-dev-enviro' ]] ;
	then

	nNuM=$(echo "$myPrograms" | wc -w) ;
	nNuM2=$(echo "$environinstall" | wc -w) ;

		while [[ "$nNuM" != "0" ]] ;
	do
		toInst=$(awk '{print $'"$nNuM"'}'<<<"$myPrograms") ;

		wH3RE=$(whereis "$toInst" | cut -f2 -d: | cut -f2 -d\ ) ;
# INSTALL
		if [[ "${#wH3RE}" != "0" ]] ;
	then
		apPR="$toInst, allready installed" ;
		((nNuM--)) ;
	else
		echo -e "\ninstalling ${toInst}..." ;
		nohup apt-get -f -m -y install "$toInst" | tee -a "/home/$SUDO_USER/installed" &
		wait ;
		sleep 1 ;
		apPR="$toInst, INSTALLED! " ;
		sleep 0.5 ;
		((nNuM--)) ;
fi
		if [ "$nNuM" = "0" ]
	then
		clear ;
		echo -e "\n apt-get done." ;
		sleep 3 ;
fi
# ON THE SCREEN
		printf "\rtesting for apps, $nNuM remaining, $apPR" ; sleep 0.5 ;
		clear ;
done

# ON THE SCREEN ::ENDE

	# save vendors MAC-Address
	ip link show | grep ether | awk '{print $2}' | tee -a "/home/$SUDO_USER/vendorsmac" ;
	chown "$SUDO_USER":"$SUDO_USER" "/home/$SUDO_USER/vendorsmac" ;
	
	# create $HOME directories
	mkdir -p $HOME/{testphp,testbash,testperl,testpython,Downloads} 2>/dev/null ;
	mkdir -p .local/share/mc/skins/ 2>/dev/null ;
	
	# copy the .config/mc/ini to $HOME
	cp -f ini $HOME/.config/mc/ini ;
	chown "$SUDO_USER":"$SUDO_USER" $HOME/.config/mc/ini ;
	
	# copy the .twmrc to $HOME
	cp -f .twmrc $HOME/.twmrc ;
	chown "$SUDO_USER":"$SUDO_USER" $HOME/.config/mc/ini ;
	
	# copy the ~/.nanorc to $HOME
	wget https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh -O- | sh && wait ;
	# thank you scopatz for the good work
	
	# set aliases
	echo "alias ls='ls --color=auto -s'" >> $HOME/.bashrc ;
	
	# set the upload path for PHP scripts
	mkdir -p /var/www/testphp 2>/dev/null ;
	echo "Alias /testphp/ /var/www/testphp/" >> /etc/apache2/sites-available/default ;
		
		if [[ ! "$(cat /etc/apache2/sites-available/default | grep cgi-bin)" =~ '/usr/lib/cgi-bin/' ]] \
		&& [ -e /usr/lib/cgi-bin/ ] ;
	then
		mkdir -p /usr/lib/cgi-bin/ 2>/dev/null ;
		echo -e "\nScriptAlias /cgi-bin/ /usr/lib/cgi-bin/\r
		<Directory "/usr/lib/cgi-bin">\r
		AllowOverride None\r
		Options ExecCGI -MultiViews +SymLinksIfOwnerMatch\r
		Order allow,deny\r
		Allow from all\r
		</Directory>\n" >> /etc/apache2/sites-available/default ;
	else
		echo "cgi-bin dir exists" ;
fi
		# update apache2 configuration
		a2enmod cgid && wait ;
		# restart server
		systemctl restart apache2.service && wait ;
		# set the rights for installed
		chown "$SUDO_USER":"$SUDO_USER" "/home/$SUDO_USER/installed" ;
	
		while [[ "$nNuM2" != "0" ]] ;
	do
		clear ;
		toCopyPath=$(awk '{print $'"$nNuM2"'}'<<<"$environinstall") ;
		echo -e "\n" ;
		sudo cp -f "$PWD/$toCopyPath" "/usr/local/bin/$toCopyPath" ;
		sudo chown root:root "/usr/local/bin/$toCopyPath" ;
		sudo chmod 4755 "/usr/local/bin/$toCopyPath" ;
		sudo chmod u+s "/usr/local/bin/$toCopyPath" ;
		printf "\r$toCopyPath" ; sleep 0.5 ;
		((nNuM2--)) ;
done
	echo -e "\n We have dev-shell-enviro successfully installed" ;

	else
		echo -e "\n Allready installed, for a new install, remove /home/$SUDO_USER/installed" ;
fi
fi
