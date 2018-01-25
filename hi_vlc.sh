#!/bin/bash
# startup file on /usr/local/bin


if [[ $(ps axu | grep -v grep | grep -v hi_vlc.sh | grep STRYPER-VLC) = '' ]] ;
        then
                vlc -I skins2 --skins2-last=/usr/share/vlc/skins2/169311-inkyV2.vlt file:///home/$USER/Music/ & hi.sh ;
        else
                exit 0 ;
fi	
