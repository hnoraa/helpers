#! /bin/bash
# this script is called from login script
DIR="~/Pictures/wallpapers"
PIC=$(ls $DIR/* | shuf -n1)
gsettings set org.gnome.desktop.background picture-uri "file://$PIC"