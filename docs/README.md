# M1ND3V3NV1R0-FANCIFUL DevOps (testing v1.0.0.b)

		codecounter: code without blank lines, without comments and without thirdparty

- Lines =4177

- Words =60474

- Chars =242297

# . 

![](https://raw.githubusercontent.com/doivglser/mindevenviro/master/docs/pics/addjus_four.jpg)

## ![SCREENSHOTS](https://github.com/doivglser/mindevenviro/blob/master/docs/pics/index.md)

# M1ND3V3NV1R0-FANCIFUL DevOps (testing v0.1.1B)

	 Deployment environment for web applications and 
	 system administration, in a minimal desktop with 
	 antivirus, NIDS and a great multimedia experience, 
	 without systemd and with TOR. (for one "$USER").

* Soon for CentOS, MacOSX and Windows

- VTWM minimal tweak, Xorg session with xdm.

- Antivirus engine ClamAV and NIDS solution Snort.

- Syntaxcheck: "python -m pgb | perl -wc | shellcheck -e | php -l | tidy -e -q".

- Changes MAC's, to obtain a new IP, by quit reverts the connected interface, to vendor's MAC.

- Web surfing with Firefox-ESR and local/web media experience with VLC.

- PlayOnLinux, to install win32 and win64 MS-Windows applications.

- Libreoffice, Geany, Terminator, Transmission, Cheese, Brutalchess, GIMP, WiCD

- Restarts apache2, mysqld, sendmail, snort, clamd.

- Search script and MySQL(MariaDB) maintainers script.

- Volatile $tmpfolder on /dev/shm 

- ScanOnAccess from ClamAV to ~/Downloads

- Transparently anonymizing traffic through TOR for a specific user with iptables.

- For programmers and administrators.

# Requirements:

- A screen resolution of at least: 1280x800

- A fresh base-install of Debian GNU/Linux 9 Stretch. (soon for CentOS, MacOSX and Windows)
- Choose netinst CD image, and burn it on a blank CD-R.
- Debian 9 GNU/Linux Stretch: (https://www.debian.org/releases/stretch/debian-installer)

- While installing: 

	      Choose a root and an user password, (write both on a paper)
          Guided - use entire disk and set up envrypted LVM,
          Separate /home, /var, and /tmp partitions,
          Don't choose any desktop or servers, 
          but standard system utilities.
  
- Root access, to make an entry for $USER in the /etc/sudoers file
- An Internet connection

# Install

* After base-install, "user@host:~sudo apt-get -y -f --fix-missing install git"

* "user@host:~git clone https://github.com/doivglser/mindevenviro-fanciful.git"

* "cd mindevenviro-fanciful" 

* "user@host:~/mindevenviro-fanciful/sudo ./mde-setup"

  Installs the "deployment environment" and the "minimal desktop" with "antivirus and NIDS":

### Debian GNU/Linux 9

	wicd brutalchess libreoffice-writer tidy cheese gimp 
	scrot mupdf terminator playonlinux wine64 wine64-tools 
	wine64-preloader mercurial libpurple-dev libpurple0 
	libjson-glib-dev pidgin xul-ext-noscript xul-ext-https-everywhere 
	xul-ext-ublock-origin firefox-esr vlc feh xclip geany 
	transmission xscreensaver wireshark vtwm oss-compat 
	alsa-utils xcompmgr x11-apps xdm xorg openvpn zip rar 
	openssl nmap clamav-freshclam clamav-milter clamdscan 
	clamav-daemon clamav-base clamav mysql-client mysql-server 
	php7.0 php7.0-cli php7.0-mcrypt php7.0-intl php7.0-mysql php7.0-curl 
	php7.0-gd php7.0-soap php7.0-xml php7.0-zip php7.0-readline 
	php7.0-opcache php7.0-json php7.0-gd dwww apache2 sendmail 
	python-gtk2-dbg shellcheck liblwp-protocol-socks-perl libcgi-pm-perl 
	perl nmon fortunes figlet mc mutt eject nano pm-utils fancontrol 
	thermald laptop-mode-tools cpufrequtils sysvinit-core 
	dirmngr git sudo gksu gnupg tor deb.torproject.org-keyring snort

* running "mde-setup" 

  Sometimes debian has updates, read the stdout please, sometimes it needs a restart. 
  
  You can aprove to login in to your github.com account, or just hit enter. 
  
  Use "mde-setup" from the "mindevenviro-fanciful" folder, for a new install, 
  
  for an update AND OR, to upgrade the system. The apt-get 
  
  package manager is marked to, not install systemd related packages.
  

# USAGE | NAVIGATION On VTWM:

* Login to X

		Click with the mouse in the lower right corner of the screen on a 
		four-cornered small frame and just drag the mouse to a corner 
		and let go. The middle area is reserved for the TV, the placeholder 
		for the program windows on the TV screen.

"F1 on the desktop" * quit's VTWM (refers to logout)

"F9 on active window" * circles windows down

"green button left corner on title-bar" * iconize window

"green button right corner on title-bar" * resize window

"Right click on the Desktop" * Change Background
  
"Right click on a Window-Title-Bar" * Puts Active-window as "last" in the list of open windows. 
  
"Middle Click on the Desktop" * VTWM Version
  
"Left click on the Desktop" * Application Menu
 
"transparent" * Click with the cross pointer to set transparency.

"solid color" * Click with the cross pointer set solid color back.

"take shot" * Click with the mouse pointer on Desktop or Window to save picture to ~/

"refresh" * Restarts VTWM on opened $USER session.

"kill" * Click with the cross pointer on a window to end process.

* logout/shutdown

"lock" * Locks the screen. xscreensaver prompt for $USER password.

"exit" * Quits VTWM. XDM login screen, returns.

"reboot" * reboot computer

"poweroff" * halt computer

# VTWM Menu:

* music 

  VLC, Listen to your music and/or videos.

* camera

  cheese, Tool to take pictures and videos from your webcam

* network

  wicd, wired and wireless network manager

* the gimp

  GIMP, GNU Image Manipulation Program
  
* calculator

  xcalc, a scientific calculator desktop accessory	

* wireshark

  Wireshark is a network "sniffer" - a tool that captures and analyzes packets off the wire. Wireshark can decode too many protocols to list here. 

* libreoffice

  Libreoffice Writer

* messenger

  pidgin, graphical multi-protocol instant messaging client.
  
* brutalchess

  3D chess game with reflection of the chessmen

* playOnLinux

  PlayOnLinux manage's: win64 applications, (like Reason 5)

* firefox-ESR

  type: localhost/dwww for dwww. ( dwww collects information from /usr/share/{man,doc} )
  
  type: localhost/testphp for your php stuff.

* transmission

  lightweight BitTorrent client
  
* geany

  fast and lightweight IDE

# USAGE in Terminator:

* terminator (Multiple GNOME terminals in one window.)

  "ctrl+PageUP" cycles TAB to right
  
  "ctrl+PageDOWN" cycles TAB to left
  
  "ctrl+TAB" swap's between Panned TAB's
  
  "ctrl+shift+T" does a new TAB.

	RUN THE FOLLOWING SHELL SCRIPTS IN THE TERMINATOR WINDOW

* openpdf (shell script)

  Open PDF files with pdf suffix
  
* sCRYPtUPdater (shell script)

  syntax check and copy to path: like /usr/local/bin, /var/www/html, /etc ...

* search (shell script)

  search by path and file suffix, if grep true open file (doesn't work at the moment)

* mysql_cp_db (shell script)

	  To rename tables in database
	   To dump database to ~/[databasename].sql
	    To restore database from ~/[databasename].sql
	     To delete zombie ID's because "lost php, xml"
  
* redundanz (shell script)  

  Puts serv-if-up daemon up and monitors servers reliability.
  
  Depends on: server-monitor, serv-if-up
  
* nids-antivirus-up (shell script)

  USAGE:

  "sudo nids-antivirus-up --nIDs" puts snort up for active interface.
  
  "sudo nids-antivirus-up --anTiVirus" restarts clamav-daemon.
  
* shi3lD (shell script)

  USAGE: "sudo shi3lD" OR pull down "shi3lD" from VTWM "Menu".
  
  shi3lD will puff your MAC-Address, so you become a new IP.
  
  Refresh in the wicd GUI and connect.
  
  Keep trying, until shi3lD says "WE HAVE shi3lD".
  
  You will have two logs on ~/ : 
  
  		"[MonthYear].mac_recieves_dhcp_lease"
	  	- A list with MAC-ADDRESSES that works with your hardware

		"[MonthYear].mac_no_dhcp_lease"
		- A list with MAC-ADDRESSES that doesn't work with your hardware
		
  Depends on: start_shield, stop_shield, nids-antivirus-up
 
* log ~/.wH0rUNSon on Terminator.

	  search: workflow, user/host control
	  mysql_cp_db: workflow, user/host control
	  sCRYPtUPdater: workflow, user/host control
	  redundanZ: startups, failures
	  shielD: macs

* set_mysql_passwd (shell script)

  To set up the MariaDB root password, enter a friendly password, only: numbers,lower-case,upper-case, only "8" digits.

* mde-setup (shell script)

  To install and update mindevenviro.

* tor__(test_tor_connexion).pl (thirdparty)

  something thirdparty, to check tor connection.
  
# SHELL SCRIPTS DOT FILES AND CONTENT

# in /root

  /root/.vendorsmac

# in ~/
   
  .wH0rUNSon 
  
  [MonthYear].mac_recieves_dhcp_lease
  
  [MonthYear].mac_no_dhcp_lease
  
  .installed
  
  .twmrc
  
  .config/mc/ini
  
  .config/terminator/config
  
  .Xresources
  
  .xscreensaver
  
  .bashrc

# in ~/Pictures

  unziped wallpapers.zip

# in /usr/local/bin

 monitoring|statistic
 
	- codecounter
	- connected
	- logdiskussage

 network|startup

	- shi3lD
	- start_shield
	- stop_shield
	- nids-antivirus-up
	- iptablestranspprox
	
 syntax|search|dump|restore|rename

	- sCRYPtUPdater
	- search
	- mysql_cp_db
	- openpdf
	
 background|startup
	
	- dwecker
	- feh-bg
	- hi
	- hi_brutalchess
	- hi_cheese
	- hi_dwecker
	- hi_firefox-esr
	- hi_geany
	- hi_gimp
	- hi_libreoffice
	- hi_pidgin
	- hi_playonlinux
	- hi_shi3lD
	- hi_transmission-gtk
	- hi_vlc
	- hi_wicd-client
	- hi_wireshark
	- hi_xcalc
	- takeshot
	- tor__(test_tor_connexion).pl (thirdparty)

 monitoring|reliability

	- server-monitor
	- serv-if-up
	- redundanz
	
 install|update|maintenance

	- mde-setup
	- set_mysql_passwd

# in /var/www/html/testphp/

  HELP.htlm
  README.html

# in /etc/X11/Xreset.d

  logoutvtwm
