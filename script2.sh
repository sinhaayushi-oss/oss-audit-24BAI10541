#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"   # your chosen software

# Check if package is installed
if rpm -q $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for philosophy note
case $PACKAGE in
    httpd)  echo "Apache: the web server that built the open internet" ;;
    mysql)  echo "MySQL: open source at the heart of millions of apps" ;;
    git)    echo "Git: a distributed version control system built for collaboration" ;;
    vlc)    echo "VLC: a media player that plays almost any format freely" ;;
    firefox) echo "Firefox: a browser focused on openness and user freedom" ;;
esac
./script2.sh

