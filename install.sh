#!/bin/bash
# installs min-dev-enviro
###     WARNING:    DON'T EDIT ANYTHING BELOW       ###

LANG="C" ;
myPrograms="snort scrot ttf-mscorefonts-installer playonlinux mupdf display terminator xul-ext-ublock-origin firefox-esr vlc feh lpe xscreensaver vtwm x11-apps xdm zip openssl clamav-freshclam clamav-milter clamdscan clamav-daemon clamav-base clamav mysql-server php5-mysql php5-mcrypt php5 dwww apache2 git sendmail python-gtk2-dbg shellcheck libcgi-pm-perl perl fortunes-es figlet mc mutt eject nano nmon " ;
environinstall="serv-if-up.sh sCRYPtUPdater.sh shi3lD.sh stop_shield.sh start_shield.sh feh-bg.sh " ;

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
	mkdir -p /home/$SUDO_USER/{testphp,testbash,testperl,testpython,Downloads,Pictures,Documents,Music,Ableton} 2>/dev/null ;
	#mkdir -p /home/$SUDO_USER/.local/share/mc/skins/ 2>/dev/null ;
	
	# copy the .config/mc/ini to $HOME
	cp -f ini /home/$SUDO_USER/.config/mc/ini ;
	chown "$SUDO_USER":"$SUDO_USER" /home/$SUDO_USER/.config/mc/ini ;
	
	# copy the .twmrc to $HOME
	cp -f twmrc /home/$SUDO_USER/.twmrc ;
	chown "$SUDO_USER":"$SUDO_USER" /home/$SUDO_USER/.twmrc ;
	
	# copy Xresources
	cp -f Xresources /etc/X11/xdm/ ;
	chmod 755 /etc/X11/xdm/Xresources ;
	
	# copy VLC skin
	cp -f 169311-inkyV2.vlt /usr/share/vlc/skins2/ ;
	chmod 755 /usr/share/vlc/skins2/169311-inkyV2.vlt ;
	
	# copy the ~/.config/terminator/config to $HOME
	cp -f config /home/$SUDO_USER/.config/terminator/config ;
	chown "$SUDO_USER":"$SUDO_USER" /home/$SUDO_USER/.config/terminator/config ;
	
	# copy the .xinitrc to $HOME
	cp -f xinitrc /home/$SUDO_USER/.xinitrc ;
	chown "$SUDO_USER":"$SUDO_USER" /home/$SUDO_USER/.xinitrc ;
	
	# copy the startup sound to $HOME/Music
	cp -f 76256__ganscaile__startup.mp3 /home/$SUDO_USER/Music/ ;
	chown "$SUDO_USER":"$SUDO_USER" /home/$SUDO_USER/Music/* ;
	
	# set aliases
	echo "alias ls='ls --color=auto -s'" >> /home/$SUDO_USER/.bashrc ;
	
	# set background Pictures
	unzip wallpapers.zip -d /home/$SUDO_USER/Pictures/ ;
	chown "$SUDO_USER":"$SUDO_USER" /home/$SUDO_USER/Pictures/* ;
	
	# set the upload path for PHP scripts
	mkdir -p /var/www/testphp 2>/dev/null ;
	echo "Alias /testphp/ /var/www/testphp/" >> /etc/apache2/sites-available/default ;
		
		if [[ ! "$(cat /etc/apache2/sites-available/default | grep cgi-bin)" =~ '/usr/lib/cgi-bin/' ]] ;
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
		a2dismod mpmevent && a2enmod mpmprefork && a2enmod cgid && wait ;
		# restart server
		systemctl restart apache2.service && wait ;
		# set the rights for installed (to remove it later)
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
