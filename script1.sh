#!/bin/bash
# Script 1: System Identity Report
# Author: Ayushi Sinha | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Ayushi Sinha"
SOFTWARE_CHOICE="Git"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

# --- Additional info ---
HOME_DIR=$HOME
DATE_TIME=$(date)
DISTRO=$(grep "^PRETTY_NAME" /etc/os-release | cut -d= -f2 | tr -d '"')

# --- Display ---
echo "================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software : $SOFTWARE_CHOICE"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE_TIME"
echo "License  : This OS is covered under GPL (open-source license)"
echo "================================"
./script1.sh

