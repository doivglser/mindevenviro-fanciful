#!/bin/bash
# changes the background in vtwm, hold it from right-click
ls $HOME/Pictures/* | sort -R | head -n1 | xargs feh --bg-scale ;
