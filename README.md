# dev-shell-enviro

Deployment environment for Debian 9 GNU/Linux Stretch, in a minimal desktop with antivirus and a NIDS. 

° For Debian GNU/Linux.

° Changes MAC - addresses, to obtain a new IP, "ctrl+C" quit's and revert the connected interface, to vendor's MAC - address.

° Checks syntax with "pychecker", "perl -wc" and "shellcheck"

° Restart Server's

° Customizable scripts

° For programmers and administrators

# Requirements:

- A fresh base-install of Debian GNU/Linux 9 Stretch.
- Choose netinst CD image, and burn it on a blank CD-R.
- Debian mirrors: https://www.debian.org/releases/stretch/debian-installer/
- While installing: crypt your drive, don't choose any desktop or servers, choose a root and an user password.
- Root access, to make an entry for $USER in the /etc/sudoers file
- An Internet connection

# Install

* ./install-min-desk.sh

installs a minimal desktop with antivirus and a NIDS:

vtwm firefox-esr vlc gnome-terminal transset display figlet mc mutt eject nano openssl clamav clamav-daemon clamav-base clamav-freshclam clamav-milter clamdscan snort

* ./install-d3V-enviro.sh

installs the deployment environment:

apache2 mysql-server php5 php5-mysql php5-mcrypt sendmail pychecker shellcheck perl dwww git

# USAGE:

# run:

* from terminal: shi3lD.sh to:

To change your MAC addresses, shi3lD.sh does a list with working and not working MAC's, and ensure the snort and clamav daemons are running. This script	runs only on systems with systemd, without network-managers.

* from terminal: redundanz.sh to:

Restarts Apache2, MySQL, sendmail, takes care about free space, if  notifi /dev/pts3 and per email.

* from terminal: sCRYPtUPdater.sh to:

Set the workflow interval in minutes and edit your projects with your favorite editor (I use nano). Upload your scripts, or packed versions of perl or python to /usr/local/bin, stop a big compile with ctrl+4, be sure you change more then one byte (if you change just one digit, do a space or something). Close with ctrl+C.

# Files:

* in $HOME

installed and installed1 # The list of the installed components.

* in /usr/local/bin

shi3lD.sh # Changes MAC's Snort and ClamAV UP status.

start_shield.sh # Depends on shi3lD.sh.

stop_shield.sh # Depends on shi3lD.sh.

redundanz.sh # Shows the status on a terminal.

server-monitor.sh # Depends on redundanz.sh, UP status.

serv-if-up.sh # Background process, depends on redundanz.sh, restart servers. If false or lack of space, writes to /dev/pts/3 and to mailbox.

sCRYPtUPdater.sh # Syntax check and update to /usr/local/bin.

# Coming soon:

An anonym e-mail solution and a volatile secure account on a RAM-Disk. I want to use phyton, because of some C, C++ libraries. I want to build the GUI in GTK+, because GTK+ is portable.

https://github.com/doivglser/dev-shell-enviro/projects

# TODO:

* shi3lD.sh

Workaround to change the user-agent while changing the Mac - addresses.

* sCRYPtUPdater.sh

If the workflow interval in minutes is over, refer to the exit handler, if false, reset workflow interval, if true exit.
Scan in $HOME for file suffixes or the header with dd, to determine the working directory.
Implement Programmable Completion, to auto-complete the command sequence with the [Tab] key.
