#!/bin/bash

# ---------------------------------------------
# Script Name: manifesto_generator.sh
# Description: Generates a personal open-source manifesto
# ---------------------------------------------

echo "========================================="
echo "      OPEN SOURCE MANIFEST GENERATOR      "
echo "========================================="

# Taking user input
read -p "Enter your name: " NAME
read -p "Why do you use Git? " REASON
read -p "What project do you want to build? " PROJECT
read -p "What does open source mean to you? " FREEDOM

DATE=$(date)

# Writing to file
echo "" > manifesto.txt
echo "=========================================" >> manifesto.txt
echo "        OPEN SOURCE MANIFESTO             " >> manifesto.txt
echo "=========================================" >> manifesto.txt
echo "Name: $NAME" >> manifesto.txt
echo "Date: $DATE" >> manifesto.txt
echo "" >> manifesto.txt
echo "I use Git because $REASON." >> manifesto.txt
echo "I aim to build $PROJECT." >> manifesto.txt
echo "For me, open source means $FREEDOM." >> manifesto.txt
echo "=========================================" >> manifesto.txt

echo ""
echo "Manifesto successfully created!"
echo "Displaying file content:"
cat manifesto.txt

echo "========================================="