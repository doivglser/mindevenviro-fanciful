#!/bin/bash
# startup file on /usr/local/bin

                if [[ $(ps axu | grep -v grep | grep -v hi_transmission-gtk.sh | grep transmission-gtk) = '' ]] ;
        then
                transmission-gtk & hi.sh ;
        else
                exit 0 ;
fi

