#!/bin/bash
# Script 5: Open Source Manifesto Generator

# Alias concept (example)
# alias runmanifesto="bash script5.sh"

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose and write manifesto
echo "On $DATE, I believe in the power of open source." > "$OUTPUT"
echo "Using tools like $TOOL, I experience $FREEDOM in technology." >> "$OUTPUT"
echo "I aspire to build $BUILD and share it freely with the world." >> "$OUTPUT"
echo "Open source represents collaboration, transparency, and innovation." >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo "--------------------------------------"
cat "$OUTPUT"
