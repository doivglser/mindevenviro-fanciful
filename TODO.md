#TODO:

# /etc/clamav/clamd.conf --> ScanOnAccess

ScanOnAccess True

OnAccessMountPath /home/$USER/Downloads

# .

# /etc/snort/snort.debian.conf --> INTERFACES

DEBIAN_SNORT_STARTUP="boot"
DEBIAN_SNORT_HOME_NET="192.168.0.0/16"
DEBIAN_SNORT_OPTIONS=""
DEBIAN_SNORT_INTERFACE="eno1"
DEBIAN_SNORT_SEND_STATS="true"
DEBIAN_SNORT_STATS_RCPT="root"
DEBIAN_SNORT_STATS_THRESHOLD="1"

# /etc/wicd/manager-settings.conf --> GLOBAL SETTINGS

[Settings]
backend = external
wireless_interface = wlp3s0b1
wired_interface = eno1
wpa_driver = wext
always_show_wired_interface = False
use_global_dns = False
global_dns_1 = None
global_dns_2 = None
global_dns_3 = None
global_dns_dom = None
global_search_dom = None
auto_reconnect = True
debug_mode = False
wired_connect_mode = 1
signal_display_type = 0
should_verify_ap = 1
dhcp_client = 0
link_detect_tool = 0
flush_tool = 0
sudo_app = 0
prefer_wired = False
show_never_connect = True

# .

# ALT+TAB

# Schach

# Uhr

# GUI's

# ncurses
