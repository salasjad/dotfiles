#!/bin/sh
#/etc/acpi/

xrandr -d :0.0 --output DP3-1 --auto --primary --output eDP1 --off 
xrandr -d :0 --output DP3-3 --mode 1680x1050 --crtc 1 --rotate left --left-of DP3-1 
#xrandr -d :0.0 --output DP3-3 --auto --left-of DP3-1 --rotate left
