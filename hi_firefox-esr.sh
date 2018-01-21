#!/bin/bash
# startup file on /usr/local/bin

                if [[ $(ps axu | grep -v grep | grep -v hi_firefox-esr.sh | grep firefox-esr) = '' ]] ;
        then
                firefox-esr & hi.sh ;
        else
                exit 0 ;
fi

