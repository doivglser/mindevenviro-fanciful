# M1ND3V3NV1R0 (testing v0.1.1B)

		codecounter: code without blank lines, without comments and without thirdparty (not yet updated)

- Lines =4404

- Words =60638

- Chars =247844

# . 

![](https://raw.githubusercontent.com/doivglser/mindevenviro/master/docs/pics/addjus_four.jpg)

## ![SCREENSHOTS](https://github.com/doivglser/mindevenviro/blob/master/docs/pics/index.md)

# M1ND3V3NV1R0 (testing v0.1.1B)

	 Deployment environment for web applications and 
	 system administration, in a minimal desktop with 
	 antivirus, NIDS and a great multimedia experience, 
	 without systemd and with TOR. (for one "$USER").

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

# TODO:

## "![Cont-Sec](https://github.com/doivglser/mindevenviro/projects)" Secure-Email-Solution

		....mber. After writing the  message, "Cont-Sec" applies a special cipher 
		for each letter and number corresponding to the "Email Code Snippets" that match 
		Your "image matching key", made in consultation with a fr....

		SpamCodeSegment="\<html\>\<title\>spam\ very\ boring\ but\ usefull\<\title\>\<style"

	a=$(nICE_Encryption -l a $SpamCodeSegment)
	echo $a
	$1$2cURl/G9$u7fHYYfdry0F8ZHpMf8/8/
	
	- I WILL TRY TO DO THE SIMPLE WAY TO CIPHER THE TEXT AS I WROTE,
          AND APPLY OTHER TECHNIQUES TO DECRYPT THE MESSAGE.
	  
	  I try to write a " nICE_Encryption -le a $3 " script, 
	  
	  + where "$1" is:
	  
	  FLAGS: -le letter, -n number, -u upper case, -lo lower case, -s space
	  
	  + And "$2" is:
	  
	  [a-zA-Z0-9\-\_\?\¿\ \.\*\#]* or a space.
	  
	  + And "$3" is:
	  
	  $3=$SpamCodeSegment ;
	  
	  The recipient recieves a Picture, that illustrates, segments of pictures 
	  that correspond to the "Email Code Snippets" from the "image matching key".


## mindevenviro

	  	portability to: Debian, CentOS, and MacOS
	  	to write without exclude codes from shellcheck
	  	"iptables psad fwsnort": tcp-wrapper
	  	to implement "logger" "pipestatus" "ncurses" "GUI's"
	  	"mindevenviro.rules": "alert/drop rules" for snort
	  	better entries for log .wH0rUNSon
	  	to search for the right MySQL syntax 
	  	to add a "Joomla CMS" to localhost

	  	to write an unix socket server, to handle http_headers 
	  	reffering user-agent, and redirect to TOR.

	  	to implement "Cont-Sec" to mindevenviro

## sCRYPtUPdater

  	To search for brackets and braces, to split the 
	  content of the source code into short code snippets.
	
  	To refer to the "exit handler"If the 
	 workflow interval in minutes is over
	  if $REPLY from "exit handler" is = "n", 
	    reset workflow interval, if $REPLY 
	      from "exit handler" is = "y" exit.

# PROBLEMS:

* "update_hosts" and "hosts"

      You have double entries in your hosts file, I should have an apartement, a computer and money to eat something.

* search

      I don't remember, I have no computer to update.

* sCRYPtUPdater

      Make sure you change more than 1 byte, so if you 
       only change one character, then please add a space.
  
        If interval in minutes is over, Ctrl-C to exit.

* for the moment shi3lD works only for WiFi Interfaces.

* "interface" shi3lD have an option to choose between Ifaces, that option must be automated.

		interface="$(cat "$tmpfolder"/interface)" ;

* no workaround to install wifi firmware. (I recommend a dd-wrt router as client over ethernet)

* while installing:

	  while installing snort: debconf asks for 
	    interface eth0 no workaround for "eno[0-9]" 
	      interfaces. Take a look in to "ip route show" and 
	       "sudo dpkg --configure -a" with the name of your interface.

# Requirements:

- A screen resolution of at least: 1280x800

- A fresh base-install of Debian GNU/Linux 9 Stretch. (soon for CentOS and MacOSX)
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

* "user@host:~/mindevenviro$ sudo mde-setup"

  Installs the "deployment environment" and the "minimal desktop" with "antivirus and NIDS":
  
  * GitHub

  Improved Nano Syntax Highlighting Files: ![scopatz nanorc](https://github.com/scopatz/nanorc)
  
  Facebook protocol plugin for libpurple (moved from jgeboski/purple-facebook): ![dequis purple-facebook](https://github.com/dequis/purple-facebook)

  * Debian GNU/Linux 9

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

  Sometimes debian has updates, read the stdout please, if you need a restart, 
  
  or you can aprove to login in to your github.com account, than just hit enter, 
  
  for new install, for an update AND OR, to upgrade the system. The apt-get 
  
  package manager is marked to, not install systemd related packages.

# USAGE On VTWM:

* Login to X
  
"F12 on active window" * circles windows up

"F1 on the desktop" * quit's VTWM (refers to logout)

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
  
* terminator (Multiple GNOME terminals in one window.)

  "ctrl+PageUP" cycles TAB to right
  
  "ctrl+PageDOWN" cycles TAB to left
  
  "ctrl+TAB" swap's between Panned TAB's
  
  "ctrl+shift+T" does a new TAB.

* messenger

  pidgin, graphical multi-protocol instant messaging client.
  
  	facebook plugin from dequis/purple-facebook.git
  
* brutalchess

  3D chess game with reflection of the chessmen

* playOnLinux

  PlayOnLinux manage's: win32 and win64 applications, (like Reason 5)

* firefox-ESR

  type: localhost/dwww for dwww. ( dwww collects information from /usr/share/{man,doc} )
  
  type: localhost/testphp for your php stuff.

* transmission

  lightweight BitTorrent client
  
* geany

  fast and lightweight IDE

# USAGE in Terminator:

	RUN THE FOLLOWING SHELL SCRIPTS IN THE TERMINATOR WINDOW

* openpdf (shell script)

  Open PDF files with pdf suffix
  
* sCRYPtUPdater (shell script)

  syntax check and copy to path: like /usr/local/bin, /var/www/html, /etc ...

* search (shell script)

  search by path and file suffix, if grep true open file

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

  To set up the MariaDB root password, enter a friendly password, only: numbers,lower-case,upper-case, 10 digits.

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

# Coming soon: "Cont-Sec"  

  An anonym e-mail solution and a volatile secure account on a RAM-Disk. I want to use phyton, because of some C, 
  C++ libraries. I want to build the GUI in GTK+, because GTK+ is portable.

* https://github.com/doivglser/min-dev-enviro/projects 

# Thank's:

![LPIC-1](https://www.theurbanpenguin.com/wp-content/uploads/2016/08/LPIC-1-Medium.png)
![Bash](https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Gnu-bash-logo.svg/245px-Gnu-bash-logo.svg.png)
![MC](https://midnight-commander.org/chrome/site/MidnightCommander.png)
![vtwm](http://www.xwinman.org/images/vtwm.gif)
![mutt](https://upload.wikimedia.org/wikipedia/commons/e/ef/Mutt.gif)
![Debian](https://www.notebookcheck.net/fileadmin/_processed_/a/4/csm_Debian_logo_81d29e8578.jpg)
![ClamAV](https://www.clamav.net/assets/clamav-trademark.png)
![gnu nano](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Gnu-nano.svg/256px-Gnu-nano.svg.png)
![Apache](http://www.linuxbrigade.com/wp-content/uploads/2014/06/apache318x260.png)
![playonlinux](http://www.playonlinux.com/images/uploads/196.jpg?w=240)
![github](http://www.toolswatch.org/wp-content/uploads/2014/09/logo_GitHub.jpg)
![VLC](https://nightlies.videolan.org/cone-soppera10.png)
![FIREFOX-ESR](http://lh4.googleusercontent.com/-ES6QFwghMpc/Tz5DbjB7zlI/AAAAAAAAA9o/T13MxP5CUrc/s1600/Firefox-ESR.png)
![stackoverflow](http://devlup.com/wp-content/uploads/2011/06/stackoverflow.png)
![transmission](https://itsfoss.com/wp-content/uploads/2015/08/transmission-logo.png)
![Snort](https://www.snort.org/assets/SnortTM.png)
![geany](https://www.linux.com/var/uploads/Image/articles/139882-2.jpg)
![PHP/MySQL](https://disenowebakus.net/imagenes/articulos/aprender-php-mysql-bases-de-datos-paginas-web-dinamicas.jpg)
![Python](http://www.coderdojo-helmond.nl/wp-content/uploads/2015/10/python-programming-assignment-help.png)
![Perl](https://www.textmagic.com/wp-content/themes/textmagic-genesis/assets/vendor/textmagic/marketing/images/api/prog-lang-logos/perl.png)
![terminator](https://i.ytimg.com/vi/mMak2VzRbmc/maxresdefault.jpg)
