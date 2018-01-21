#!/bin/bash
# startup file on /usr/local/bin

                if [[ $(ps axu | grep -v grep | grep -v hi_geany.sh | grep geany) = '' ]] ;
        then
                geany & hi.sh ;
        else
                exit 0 ;
fi

