# sh13lD

Requirements:

- A fresh base-install of Debian GNU/Linux 9 Stretch. While installing: crypt drive, don't choose any desktop, choose a root and an user password. https://www.debian.org/devel/debian-installer/
- Root privileges to make an entry for $USER in the /etc/sudoers file
- An Internet Connection

° For Debian GNU/Linux with systemd. version 0.01

° Syntaxcheck with "pychecker", "perl -wc" and "shellcheck"

° Restart Server's

° Customizable Scripts

° For Programmers and Administrators

# Usage:

run:

./install-min-desk.sh

installs a minimal Desktop with Antivirus and Firewall:

vtwm firefox-esr vlc gnome-terminal transset display figlet mc mutt eject nano openssl clamav clamav-daemon clamav-base clamav-freshclam clamav-milter clamdscan snort

run:

./install-d3V-enviro.sh

installs the Deployment Environment:

apache2 mysql-server php5 php5-mysql php5-mcrypt sendmail pychecker shellcheck perl dwww git

Run from Terminal: sCRYPtUPdater.sh to:

Edit your Projects with your favorite Editor, upload your Scripts or packed versions of perl or python to 

/usr/local/bin, stop a big compile with ctrl+4, be sure you change more then one byte. Close with ctrl+C.

redundanz.sh :

Restarts Apache2, MySQL, sendmail, takes care about free space and notifiy on: /dev/pts3 and per email.

# Files:

installed and installed1 # the list of the installed components, in $HOME/[file]

shi3lD.sh # changes MAC's and ensure that Snort and ClamAV are running

start_shield.sh # depends on shi3lD.sh

stop_shield.sh # depends on shi3lD.sh

redundanz.sh # shows the status on a Terminal

server-monitor.sh # depends on redundanz.sh, status

serv-if-up.sh # depends on redundanz.sh, restart servers.

sCRYPtUPdater.sh # Syntaxchecker and update to /usr/local/bin

install-d3V-enviro.sh # installs the environment for sCRYPtUPdater.sh and copy the scripts to: /usr/local/bin

install-min-desk.sh # installs the environment for shi3lD.sh and copy the scripts to: /usr/local/bin
