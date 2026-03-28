#!/bin/bash

# ---------------------------------------------
# Script Name: system_git_info.sh
# Description: Displays system details along with Git information
# ---------------------------------------------

echo "========================================="
echo "        SYSTEM INFORMATION REPORT         "
echo "========================================="

# Display current user
USER_NAME=$(whoami)
echo "Logged in User: $USER_NAME"

# Display hostname
HOST_NAME=$(hostname)
echo "System Hostname: $HOST_NAME"

# Display kernel version
KERNEL=$(uname -r)
echo "Kernel Version: $KERNEL"

# Display system uptime
UPTIME=$(uptime -p)
echo "System Uptime: $UPTIME"

# Display current date and time
CURRENT_DATE=$(date)
echo "Current Date & Time: $CURRENT_DATE"

echo ""
echo "========================================="
echo "           GIT INFORMATION               "
echo "========================================="

# Check if Git is installed
if command -v git > /dev/null 2>&1
then
    echo "Git Status: INSTALLED"

    # Show Git version
    VERSION=$(git --version)
    echo "Git Version: $VERSION"

    # Show Git location
    LOCATION=$(which git)
    echo "Git Location: $LOCATION"
else
    echo "Git Status: NOT INSTALLED"
fi

echo "========================================="