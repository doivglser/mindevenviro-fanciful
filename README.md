# dev-shell-enviro

Deployment Environment for Debian 9 GNU/Linux Stretch, in a minimal Desktop with Antivirus and NIDS. 

° For Debian GNU/Linux.

° Changes MAC - Addresses, to obtain a new IP, "ctrl+C" quit's and revert the connected interface, to vendor's MAC - Address.

° Checks syntax with "pychecker", "perl -wc" and "shellcheck"

° Restart Server's

° Customizable Scripts

° For Programmers and Administrators

# Requirements:

- A fresh base-install of Debian GNU/Linux 9 Stretch.
- Choose netinst CD image, and burn it on a blank CD-R.
- Debian mirrors: https://www.debian.org/releases/stretch/debian-installer/
- While installing: crypt your drive, don't choose any desktop or servers, choose a root and an user password.
- Root access, to make an entry for $USER in the /etc/sudoers file
- An Internet Connection

# Install

* ./install-min-desk.sh

installs a minimal Desktop with Antivirus and Firewall:

vtwm firefox-esr vlc gnome-terminal transset display figlet mc mutt eject nano openssl clamav clamav-daemon clamav-base clamav-freshclam clamav-milter clamdscan snort

* ./install-d3V-enviro.sh

installs the Deployment Environment:

apache2 mysql-server php5 php5-mysql php5-mcrypt sendmail pychecker shellcheck perl dwww git

# USAGE:

# run:

* from Terminal: shi3lD.sh to:

To change your MAC addresses, shi3lD.sh does a list with working and not working MAC's, and ensure the snort and clamav daemons are running. This script	runs only on systems with systemd, without network-managers.

* from Terminal: redundanz.sh to:

Restarts Apache2, MySQL, sendmail, takes care about free space and notifiy on: /dev/pts3 and per email.

* from Terminal: sCRYPtUPdater.sh to:

Edit your Projects with your favorite Editor (I use nano) and upload your Scripts or packed versions of perl or python to /usr/local/bin, stop a big compile with ctrl+4, be sure you change more then one byte. Close with ctrl+C.

# Files:

* in $HOME

installed and installed1 # the list of the installed components

* in /usr/local/bin

shi3lD.sh # changes MAC's and ensure that Snort and ClamAV are up

start_shield.sh # depends on shi3lD.sh

stop_shield.sh # depends on shi3lD.sh

redundanz.sh # shows the status on a Terminal

server-monitor.sh # depends on redundanz.sh, UP status.

serv-if-up.sh # background process, depends on redundanz.sh, restart servers. On failure, writes to /dev/pts/3 and to mailbox.

sCRYPtUPdater.sh # Syntax check and update to /usr/local/bin

# Coming soon:

An anonym Mail solution and a volatile secure account on a RAM-Disk. I want to use phyton, because of some C, C++ libraries. I want to build the GUI in GTK+, because GTK+ is portable.

https://github.com/doivglser/dev-shell-enviro/projects

# TODO:

* shi3lD.sh

Workaround to change the User Agent while changing the Mac-Addresses.

* sCRYPtUPdater.sh

If the time in minutes is over, refer to the exit handler, if false, reset work-interval, if true exit.
