#!/bin/bash
# changes the background in vtwm, hold it from right-click
feh --bg-scale "$(sort -R "$HOME/Pictures/*.jpg" | head -n1)" ;
