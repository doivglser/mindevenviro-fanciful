#!/bin/bash

# installs min-dev-enviro

###     WARNING:    DON'T EDIT ANYTHING BELOW       ###

LANG="C" ;
myPrograms="snort scrot playonlinux mupdf terminator xul-ext-ublock-origin firefox-esr vlc feh xclip geany transmission xscreensaver vtwm oss-compat alsa-utils x11-apps xdm xorg zip rar openssl clamav-freshclam clamav-milter clamdscan clamav-daemon clamav-base clamav mysql-server php7.0 dwww apache2 git sendmail python-gtk2-dbg shellcheck libcgi-pm-perl perl fortunes figlet mc mutt eject nano nmon " ;
environinstall="serv-if-up.sh sCRYPtUPdater.sh shi3lD.sh stop_shield.sh start_shield.sh feh-bg.sh hi.sh hi_geany.sh hi_transmission-gtk.sh hi_firefox-esr.sh hi_playonlinux.sh hi_vlc.sh hi_wicd-client.sh " ;

		if [ ! $EUID = 0 ] ;
	then
		sudo "$0" ;
else
		if [ ! -e "/home/$SUDO_USER/.installed" ] && [[ $PWD =~ 'min-dev-enviro' ]] ;
	then

	nNuM1=$(echo "$environinstall" | wc -w) ;
	nNuM2=$(echo "$myPrograms" | wc -w) ;

		if [[ "$(df -h | grep -E shm$ | cut -f2 -d% | tr -d '\ ')" != '' ]] ;
	then
		tmpfolder="$(df -h | grep -E shm$ | cut -f2 -d% | tr -d '\ ')" ;
	else
		tmpfolder="/tmp" ;
fi
	echo -e "\n ... BEGIN INSTALLATION ::" ;

		while [[ "$nNuM1" != "0" ]] ;
	do
		toCopyPath=$(awk '{print $'"$nNuM1"'}'<<<"$environinstall") ;
		sudo cp -f "$PWD/$toCopyPath" "/usr/local/bin/$toCopyPath" ;
		sudo chown root:root "/usr/local/bin/$toCopyPath" ;
		sudo chmod 4755 "/usr/local/bin/$toCopyPath" ;
		sudo chmod u+s "/usr/local/bin/$toCopyPath" ;
		printf "\r$toCopyPath" ; sleep 0.5 ;
		((nNuM1--)) ;
done

	echo -e "\n ... save vendors MAC-Address" ;
	ip link show | grep ether | awk '{print $2}' | tee -a "/home/$SUDO_USER/.vendorsmac" ;
	chown "$SUDO_USER":"$SUDO_USER" "/home/$SUDO_USER/.vendorsmac" ;

	echo -e "\n ... create /home/$SUDO_USER Directories" ;
	mkdir -p /home/$SUDO_USER/{testphp,testbash,testperl,testpython,Downloads,Pictures,Documents,Music,Ableton} 2>/dev/null ;

	echo -e "\n ... set background Pictures" ;
	unzip wallpapers.zip -d /home/$SUDO_USER/Pictures/ && wait ;
	chown -R "$SUDO_USER":"$SUDO_USER" /home/$SUDO_USER/Pictures/* ;

	echo -e "\n ... copy the startup sound to /home/$SUDO_USER/Music/" ;
	cp -f 76256__ganscaile__startup.mp3 /home/$SUDO_USER/Music/ && wait ;
	chown "$SUDO_USER":"$SUDO_USER" /home/$SUDO_USER/Music/* ;

	echo -e "\n ... I'm going to install programs\n ... copy sources.list" ;
	cp -f sources.list /etc/apt/sources.list
	apt-get update && wait ;
	apt -f -y -m autoremove && wait ;

		while [[ "$nNuM2" != "0" ]] ;
	do
		toInst=$(awk '{print $'"$nNuM2"'}'<<<"$myPrograms") ;

		wH3RE=$(whereis "$toInst" | cut -f2 -d: | cut -f2 -d\ ) ;

		if [[ "${#wH3RE}" != "0" ]] ;
	then
		apPR="$toInst, allready installed" ;
		echo -e "\n$apPR" | tee -a "/home/$SUDO_USER/.installed";
		((nNuM2--)) ;
	else
		echo -e "\ninstalling ${toInst}..." ;
		nohup apt-get -f -m -y install "$toInst" | tee -a "/home/$SUDO_USER/.installed" &
		wait ;
		sleep 1 ;
		apPR="$toInst, INSTALLED! " ;
		echo -e "\n$apPR" | tee -a "/home/$SUDO_USER/.installed";		
		sleep 0.5 ;
		((nNuM2--)) ;
fi
		if [ "$nNuM2" = "0" ]
	then
		echo -e "\n ... apt-get done." ;
		sleep 0.5 ;
fi
		printf "\r ... testing for apps, $nNuM2 remaining, $apPRn" ; sleep 0.5 ;
done

	echo -e "\n ... copy Xresources" ;
	cp -f Xresources /etc/X11/xdm/ ;
	chmod 755 /etc/X11/xdm/Xresources ;

	echo -e "\n ... update .bashrc" ;
	echo "set -o noclobber" >> /home/$SUDO_USER/.bashrc ;	
	echo "alias ls='ls --color=auto -s'" >> /home/$SUDO_USER/.bashrc ;
	echo "alias check='ps aux | grep -v grep | grep clamd && ps aux | grep -v grep | grep snort'" >> /home/$SUDO_USER/.bashrc ;
	echo "alias snortup='sudo -u root setsid snort -i wlp3s0b1 >/dev/null 2>&1 < /dev/null &'" >> /home/$SUDO_USER/.bashrc ;
	echo "alias down='sudo init 0'" >> /home/$SUDO_USER/.bashrc ;
	echo "alias reboot='sudo init 6'" >> /home/$SUDO_USER/.bashrc ;

	echo -e "\n ... copy the ini file to /home/$SUDO_USER/.config/mc/" ;
	mkdir -p /home/$SUDO_USER/.config/mc 2>/dev/null ;
	cp -f ini /home/$SUDO_USER/.config/mc/ini ;
	chown "$SUDO_USER":"$SUDO_USER" /home/$SUDO_USER/.config/mc/ini ;

	echo -e "\n ... copy the config file to /home/$SUDO_USER/.config/terminator/config" ;
	mkdir -p /home/$SUDO_USER/.config/terminator/config 2>/dev/null ;
	cp -f config /home/$SUDO_USER/.config/terminator/config ;
	chown "$SUDO_USER":"$SUDO_USER" /home/$SUDO_USER/.config/terminator/config ;
	
	echo -e "\n ... copy the .twmrc file to /home/$SUDO_USER" ;
	cp -f twmrc /home/$SUDO_USER/.twmrc ;
	chown "$SUDO_USER":"$SUDO_USER" /home/$SUDO_USER/.twmrc ;
	
	echo -e "\n ... copy the .xscreensaver file to /home/$SUDO_USER" ;
	cp -f xscreensaver /home/$SUDO_USER/.xscreensaver ;
	chown "$SUDO_USER":"$SUDO_USER" /home/$SUDO_USER/.xscreensaver ;	

	echo -e "\n ... copy VLC skin" ;
	cp -f STRYPER-VLC.vlt /usr/share/vlc/skins2/ ;
	chmod 755 /usr/share/vlc/skins2/STRYPER-VLC.vlt ;

	echo -e "\n ... set the upload path for PHP scripts" ;
	mkdir -p /var/www/html/testphp/ 2>/dev/null ;
	echo "Alias /testphp/ /var/www/html/testphp/" >> /etc/apache2/sites-available/000-default.conf ;
	
	echo -e "\n ... check for cgi-bin on drive" ;
	
		if [[ ! "$(cat /etc/apache2/sites-available/000-default.conf | grep cgi-bin)" =~ '/usr/lib/cgi-bin/' ]] ;
	then
		mkdir -p /usr/lib/cgi-bin/ 2>/dev/null ;
		echo -e "\nScriptAlias /cgi-bin/ /usr/lib/cgi-bin/\r
		<Directory "/usr/lib/cgi-bin">\r
		AllowOverride None\r
		Options +ExecCGI +MultiViews +SymLinksIfOwnerMatch\r
		Order allow,deny\r
		Allow from all\r
		</Directory>\n" >> /etc/apache2/sites-available/000-default.conf ;
	else
		echo -e "\n ... cgi-bin dir exists" ;
fi
		echo -e "\n ... update apache2 configuration" ;
		a2enmod cgid && wait ;
		
		echo -e "\n ... restart server" ;
		systemctl restart apache2.service && wait ;

		echo -e "\n ... put $SUDO_USER/Downloads in a Jail" ;
		echo "/dev/shm /home/$SUDO_USER/Downloads auto bind 0 0" | tee -a /etc/fstab ;

		echo -e "\n ... set the rights for installed (to remove it later)" ;
		chown "$SUDO_USER":"$SUDO_USER" "/home/$SUDO_USER/.installed" ;

		echo -e "\n\n ... Congratulations we have min-dev-enviro successfully installed!\r" ;
else
		echo -e "\n Allready installed, for a new install, remove /home/$SUDO_USER/.installed\r" ;
fi
fi
