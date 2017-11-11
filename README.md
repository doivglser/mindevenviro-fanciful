# min-dev-enviro

Deployment environment for Debian 9 GNU/Linux Stretch, in a minimal desktop with antivirus and NIDS. 

° For Debian GNU/Linux.

° Changes MAC - addresses, to obtain a new IP, "ctrl+C" quit's and revert the connected interface, to vendor's MAC - address.

° Antivirus engine ClamAV and NIDS solution Snort.

° Checks syntax with "python -m pgb", "perl -wc", "bash -xvn" and "php -l"

° Restart Server's

° Web surfing with Firefox-esr and local/web media experience with VLC

° Customizable scripts

° For programmers and administrators

# TODO:

* ~/.nanorc

A ~/.nanorc, to enhance code highlighting.

* ~/.config/mc/ini

A ~/.config/mc/ini, to color screen a little.

* ~/.twmrc

A ~/.twmrc, with the geometries and entries for the apps.

* ~/.config/terminator/config

A ~/.config/terminator/config, with the layout and the geometries.

* shi3lD.sh

Workaround to change the user-agent while changing the MAC - addresses.

* sCRYPtUPdater.sh

Workaround to update python (compile) and perl scripts (a ScriptAlias for Apache2).
To search for brackets and braces, to split the content of the source code into short code snippets.
If the workflow interval in minutes is over, refer to the exit handler, if false, reset workflow interval, if true exit.
Scan in $HOME for file suffixes or the header with dd, to determine the working directory.
Implement Programmable Completion, to auto-complete the command sequence with the [Tab] key.

# Requirements:

- A fresh base-install of Debian GNU/Linux 9 Stretch.
- Choose netinst CD image, and burn it on a blank CD-R.
- Debian mirrors: https://www.debian.org/releases/stretch/debian-installer/
- While installing: crypt your drive, don't choose any desktop or servers, choose a root and an user password.
- Root access, to make an entry for $USER in the /etc/sudoers file
- An Internet connection

# Install

* log in over SSH and copy/paste the line below:

cd $HOME && wget https://github.com/doivglser/min-dev-enviro/archive/v1.0.17.tar.gz && tar -xvzf v1.0.17.tar.gz && cd min-dev-enviro-1.0.17 && ls -ahls --color=auto && pwd

* ./install

Installs the deployment environment and the minimal desktop with antivirus and NIDS:

openssl clamav clamav-daemon clamav-base clamav-freshclam clamav-milter clamdscan git apache2 dwww mysql-server php5 php5-mysql php5-mcrypt sendmail python-gtk2-dbg shellcheck perl figlet mc mutt eject nano vtwm transset display terminator firefox-esr vlc snort

# USAGE:

* Login with your user name as $USER, on both: TTY1 (shi3lD.sh), TTY2 (mutt), TTY3 (mc), and to X.

# run:

* from TTY1: shi3lD.sh

To change your MAC addresses, shi3lD.sh does a list with working and not working MAC's, and ensure the snort and clamav daemons are running. This script	runs only on systems without network-managers.

* from TTY1: mc

file manager

* from TTY2: mutt

system emails

* from TTY3: gnu nano 

editor

# On X, running vtwm:

* Firefox

type: your_hostname for dwww and/or open a tab and type: hostname/testphp for your php stuff.

* VLC 

your music and/or videos

* terminator

multiple GNOME terminals in one window

* from terminator: redundanz.sh

Restarts Apache2, MySQL, Sendmail. If false, or on lack of space, writes to /dev/pts/3 and to mailbox.

* from terminator: sCRYPtUPdater.sh

Set the workflow interval in minutes and edit your projects with your favorite editor (I use nano). Update your scripts to /usr/local/bin or to /var/www/testphp. Stop a python, perl or bash syntax-check, with ctrl+4. Be sure you change more then one byte (if you change just one digit, do a space or a hash with a comment). Close with ctrl+C.

* from terminator: nano

Edit your projects with nano. To get a good overview on the screen, you have two more grids in the terminator window, with the shell scripts: redundanz.sh and sCRYPtUPdater.sh.

# Files:

* in $HOME

installed # The list of the installed components.

Oct2017.mac_recieves_dhcp_lease # Depends on shi3lD.sh, a list of working MAC's addresses.

Oct2017.mac_no_dhcp_lease # Depends on shi3lD.sh, a list of NOT working MAC's addresses.

wH0rUNSon # Depends on sCRYPtUPdater.sh, sCRYPtUPdater.sh writes the username and the host with a timestamp.

* in /usr/local/bin

shi3lD.sh # Changes MAC's Snort and ClamAV UP status.

start_shield.sh # Depends on shi3lD.sh.

stop_shield.sh # Depends on shi3lD.sh.

redundanz.sh # Shows the status on a terminal.

server-monitor.sh # Depends on redundanz.sh, UP status.

serv-if-up.sh # Depends on redundanz.sh, background process.

sCRYPtUPdater.sh # Syntax check and update to /usr/local/bin.

# Coming soon:

An anonym e-mail solution and a volatile secure account on a RAM-Disk. I want to use phyton, because of some C, C++ libraries. I want to build the GUI in GTK+, because GTK+ is portable.

https://github.com/doivglser/min-dev-enviro/projects

# Thank's

![LPIC-1](https://www.theurbanpenguin.com/wp-content/uploads/2016/08/LPIC-1-Medium.png)
![Bash](https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Gnu-bash-logo.svg/245px-Gnu-bash-logo.svg.png)
![mutt](https://upload.wikimedia.org/wikipedia/commons/e/ef/Mutt.gif)
![MC](https://midnight-commander.org/chrome/site/MidnightCommander.png)
![vtwm](http://www.xwinman.org/images/vtwm.gif)
![Debian](https://www.notebookcheck.net/fileadmin/_processed_/a/4/csm_Debian_logo_81d29e8578.jpg)
![ClamAV](https://www.clamav.net/assets/clamav-trademark.png)
![gnu nano](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Gnu-nano.svg/256px-Gnu-nano.svg.png)
![Apache](http://www.linuxbrigade.com/wp-content/uploads/2014/06/apache318x260.png)
![google](http://www.fayerwayer.com/up/2008/02/google-07.png)
![stackoverflow](http://devlup.com/wp-content/uploads/2011/06/stackoverflow.png)
![github](http://www.toolswatch.org/wp-content/uploads/2014/09/logo_GitHub.jpg)
![Snort](https://www.snort.org/assets/SnortTM.png)
![PHP/MySQL](https://disenowebakus.net/imagenes/articulos/aprender-php-mysql-bases-de-datos-paginas-web-dinamicas.jpg)
![Python](http://www.coderdojo-helmond.nl/wp-content/uploads/2015/10/python-programming-assignment-help.png)
![Perl](https://www.textmagic.com/wp-content/themes/textmagic-genesis/assets/vendor/textmagic/marketing/images/api/prog-lang-logos/perl.png)
