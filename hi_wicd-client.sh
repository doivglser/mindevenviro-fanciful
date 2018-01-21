#!/bin/bash
# startup file on /usr/local/bin

                if [[ $(ps axu | grep -v grep | grep -v hi_wicd-client.sh | grep wicd-client) = '' ]] ;
        then
                wicd-client -n & hi.sh ;
        else
                exit 0 ;
fi

