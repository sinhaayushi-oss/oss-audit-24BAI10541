#!/bin/bash

# ---------------------------------------------
# Script Name: directory_git_audit.sh
# Description: Checks directories, permissions, size
#              and detects Git repositories
# ---------------------------------------------

echo "========================================="
echo "       DIRECTORY & GIT AUDIT SCRIPT       "
echo "========================================="

# List of directories to check
DIRECTORIES=("/home" "/etc" "/usr")

for DIR in "${DIRECTORIES[@]}"
do
    if [ -d "$DIR" ]
    then
        echo ""
        echo "Directory: $DIR"

        # Permissions
        PERMISSION=$(ls -ld $DIR | awk '{print $1}')
        echo "Permissions: $PERMISSION"

        # Owner
        OWNER=$(ls -ld $DIR | awk '{print $3}')
        echo "Owner: $OWNER"

        # Size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "Size: $SIZE"
    fi
done

echo ""
echo "-----------------------------------------"
echo "       CHECKING CURRENT DIRECTORY         "
echo "-----------------------------------------"

# Check if current folder is Git repo
if [ -d ".git" ]
then
    echo "This directory is a Git repository."

    echo "Branch Name:"
    git branch --show-current

    echo "Total Commits:"
    git log --oneline | wc -l
else
    echo "This directory is NOT a Git repository."
fi

echo "========================================="