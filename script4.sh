#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh logfile.txt [keyword]

LOGFILE=$1
KEYWORD=${2:-"error"}    # Default keyword is 'error'
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Do-while style retry if file is empty
while [ ! -s "$LOGFILE" ]; do
    echo "File is empty. Waiting for data..."
    sleep 2
done

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Output result
echo "======================================"
echo " Log File Analysis Report"
echo "======================================"
echo "File     : $LOGFILE"
echo "Keyword  : $KEYWORD"
echo "Count    : $COUNT"

# Print last 5 matching lines
echo "--------------------------------------"
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
echo "======================================"
