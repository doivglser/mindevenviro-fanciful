#!/bin/bash
# startup file on /usr/local/bin

                if [[ $(ps axu | grep -v grep | grep -v hi_playonlinux.sh | grep playonlinux) = '' ]] ;
        then
                playonlinux & hi.sh ;
        else
                exit 0 ;
fi

