#!/bin/bash

# Set colors
red='\e[0;31m'
green='\e[0;32m'
NC='\e[0m' # No Color

echo
echo '-------------------------------------'
echo -e "${red}Restoring your workspace${NC}"

# Remove the entire contents of the root folder
rm ~/workspace/* 2>/dev/null
rm -rf ~/workspace/css 2>/dev/null

# Copy the example folder to the root
cp -r ~/workspace/.guides/stages/* ~/workspace

echo -e "${red}Done!!! You can close the tab now.${NC}"
echo '-------------------------------------'
echo