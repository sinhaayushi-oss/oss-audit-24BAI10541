#!/bin/bash

# ---------------------------------------------
# Script Name: git_package_check.sh
# Description: Checks if Git is installed and provides details
# ---------------------------------------------

PACKAGE="git"

echo "========================================="
echo "        PACKAGE INSPECTION SCRIPT         "
echo "========================================="

# Check installation using dpkg
if dpkg -l | grep -q $PACKAGE
then
    echo "$PACKAGE is installed on the system."

    # Display version
    echo "Version Information:"
    git --version
else
    echo "$PACKAGE is NOT installed on this system."
fi

echo ""
echo "-----------------------------------------"
echo "         PACKAGE DESCRIPTION              "
echo "-----------------------------------------"

# Case statement for description
case $PACKAGE in
    git)
        echo "Git is a distributed version control system."
        echo "It helps developers track changes and collaborate efficiently."
        ;;
    python3)
        echo "Python is a high-level programming language."
        ;;
    *)
        echo "No description available."
        ;;
esac

echo "========================================="