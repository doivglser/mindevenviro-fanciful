#!/bin/bash
# changes the background in vtwm, hold it from right-click
feh --bg-scale "$(ls -ls $HOME/Pictures/*.jpg | sort -R | head -n1)" ;
