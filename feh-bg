#!/bin/bash
# changes the background in vtwm, with pictures from folder Pictures
IFS=$(echo -en "\b\n") ;
ls $HOME/Pictures/* | sed 's/\ /\\ /g' | sort -R | head -n1 | xargs feh --bg-scale ;
