# min-dev-enviro

Deployment environment for Debian 9 GNU/Linux Stretch, in a minimal desktop with antivirus and NIDS. 

° For Debian GNU/Linux.

° Antivirus engine ClamAV and NIDS solution Snort.

° Checks syntax with "python -m pgb", "perl -wc", "bash -xvn" and "php -l".

° Changes MAC - addresses, to obtain a new IP, "ctrl+C" quit's and revert the connected interface, to vendor's MAC - address.

° Web surfing with Firefox-ESR and local/web media experience with VLC.

° PlayOnLinux, I use Ableton Suite.

° Restarts apache2, mysqld, sendmail, snort, clamd.

° For programmers and administrators.

# TODO:

* shi3lD.sh

Workaround to change the user-agent while changing the MAC - addresses.

* sCRYPtUPdater.sh

To search for brackets and braces, to split the content of the source code into short code snippets.
If the workflow interval in minutes is over, refer to the exit handler, if false, reset workflow interval, if true exit.
Scan in $HOME for file suffixes or the header with dd, to determine the working directory.
Implement Programmable Completion, to auto-complete the command sequence with the [Tab] key.

* mindevenviro.rules

iptables drop rules for /etc/snort/rules/

# Requirements:

- A fresh base-install of Debian GNU/Linux 9 Stretch.
- Choose netinst CD image, and burn it on a blank CD-R.
- Debian 9 GNU/Linux Stretch: https://www.debian.org/releases/stretch/debian-installer/
- While installing: crypt your drive, don't choose any desktop or servers, choose a root and an user password.
- Root access, to make an entry for $USER in the /etc/sudoers file
- An Internet connection

# Install

* log in over SSH and copy/paste the line below:

cd $HOME && wget https://github.com/doivglser/min-dev-enviro/archive/v1.0.0.tar.gz && tar -xvzf v1.0.0.tar.gz && cd min-dev-enviro-1.0.0 && ls -ahls --color=auto && pwd

* ./install

Installs the deployment environment and the minimal desktop with antivirus and NIDS:

snort scrot ttf-mscorefonts-installer playonlinux mupdf display terminator xul-ext-ublock-origin firefox-esr vlc feh lpe vtwm x11-apps xdm zip openssl clamav-freshclam clamav-milter clamdscan clamav-daemon clamav-base clamav mysql-server php5-mysql php5-mcrypt php5 dwww apache2 git sendmail python-gtk2-dbg shellcheck libcgi-pm-perl perl figlet mc mutt eject nano nmon 

# USAGE:

* Login just to X.

# On vtwm:

* Firefox-ESR

type: localhost/dwww for dwww. ( dwww collects information from /usr/share/{man,doc} )

type: localhost/testphp for your php stuff.

* VLC 

Listen to your music and/or videos.

* PlayOnLinux (manage's wine)

Install MS-Office, or Manage your projects with Ableton 9.

* terminator

Multiple GNOME terminals in one window.

* from terminator tab 1: a shell

* from terminator tab 1: sCRYPtUPdater.sh

Set the workflow interval in minutes and edit your projects with your favorite editor (I use lpe). Update your scripts to /usr/local/bin, to /var/www/testphp or to /usr/lib/cgi-bin. Stop a php, python, perl or bash syntax-check, with ctrl+4. Be sure you change more then one byte (if you change just one digit, do a space or a hash with a comment). Close with ctrl+C.

* from terminator tab 2: shi3lD.sh (network-manager) in /dev/pts/2

To change your MAC addresses, shi3lD.sh does a list with working and not working MAC's, and ensure the snort and clamd daemons are running. While running shi3lD.sh Firefox-ESR will be killed after each MAC-puffing. This script	runs only on systems without network-managers. PLEASE DON'T USE shi3lD.sh, IF YOU WANT TO LOGIN TO: facebook.com, or a free-web-mail-service (Or Firefox will open your previous session and you loose a MAC-ADDRESS and an IP-ADDRESS).

shi3lD.sh invokes serv-if-up.sh. "serv-if-up.sh" Restarts Apache2, MySQL, Sendmail. If false, or on lack of space, writes to /dev/pts/2 and to mailbox.

* from terminator tab 2: mutt, nmon, mc

# Files:

* in $HOME

installed # The list of the installed components.

Oct2017.mac_recieves_dhcp_lease # Depends on shi3lD.sh, a list of working MAC's addresses.

Oct2017.mac_no_dhcp_lease # Depends on shi3lD.sh, a list of NOT working MAC's addresses.

wH0rUNSon # Depends on sCRYPtUPdater.sh, sCRYPtUPdater.sh writes the username and the host with a timestamp.

.twmrc # vtwm layout

.config/terminator/config # terminator config

.config/mc/ini # coloring mc

* in /usr/local/bin

shi3lD.sh # network-manager

start_shield.sh # Depends on shi3lD.sh.

stop_shield.sh # Depends on shi3lD.sh.

redundanz.sh # Shows the status on a terminal.

server-monitor.sh # Depends on redundanz.sh, UP status.

serv-if-up.sh # Depends on redundanz.sh, background process, restarts servers.

sCRYPtUPdater.sh # Syntax check and update to the path.

feh-bg.sh # changes the background on vtwm.

# Coming soon:

An anonym e-mail solution and a volatile secure account on a RAM-Disk. I want to use phyton, because of some C, C++ libraries. I want to build the GUI in GTK+, because GTK+ is portable.

* https://github.com/doivglser/min-dev-enviro/projects

# Thank's

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
![google](http://www.fayerwayer.com/up/2008/02/google-07.png)
![Snort](https://www.snort.org/assets/SnortTM.png)
![PHP/MySQL](https://disenowebakus.net/imagenes/articulos/aprender-php-mysql-bases-de-datos-paginas-web-dinamicas.jpg)
![Python](http://www.coderdojo-helmond.nl/wp-content/uploads/2015/10/python-programming-assignment-help.png)
![Perl](https://www.textmagic.com/wp-content/themes/textmagic-genesis/assets/vendor/textmagic/marketing/images/api/prog-lang-logos/perl.png)
![terminator](https://i.ytimg.com/vi/mMak2VzRbmc/maxresdefault.jpg)
