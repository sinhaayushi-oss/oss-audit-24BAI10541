#!/bin/bash

# ---------------------------------------------
# Script Name: git_log_analyzer.sh
# Description: Analyzes Git commit history
# ---------------------------------------------

echo "========================================="
echo "        GIT LOG ANALYZER SCRIPT           "
echo "========================================="

# Check if inside Git repo
if [ ! -d ".git" ]
then
    echo "Error: Not inside a Git repository."
    exit 1
fi

echo "Analyzing commit history..."

COUNT=0

# Read commit log line by line
git log --oneline | while read LINE
do
    echo "$LINE"
    COUNT=$((COUNT + 1))
done

echo ""
echo "-----------------------------------------"
echo "Total number of commits:"
git log --oneline | wc -l

echo "-----------------------------------------"
echo "Recent 5 commits:"
git log --oneline | head -5

echo "========================================="