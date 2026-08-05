#!/bin/bash

# COLORS
###############################################################################

BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'

NC='\033[0m'        # No Color



echo "================================================================================================"
echo ""
echo ""
echo -e "${CYAN}                                Modify File & Folder Ownership                                   ${NC}     "
echo ""
echo ""
echo "================================================================================================"

echo ""
echo ""

echo -e "${YELLOW}1.${NC} Modify File ownership "
echo -e "${YELLOW}2.${NC} Modify Folder ownership"
echo -e "${YELLOW}3.${NC} Back"
echo ""
read -p " Select your os to proceed :" per 
echo ""
	
	if [ "$per" = "1" ]; then 

	clear

echo ""
echo "================================================================================================"
echo ""
echo -e "${CYAN} 				Modify Your file ownership 				${NC}"
echo ""
echo "================================================================================================"
echo ""

read -p  "1. Enter File Directory Path :  " file
read -p  "2. Enter New owner  :  " own


	sudo chown $own $file
echo ""

	ls -l


	fi









    if [ "$per" = "2" ]; then

        clear

echo ""
echo "================================================================================================"
echo ""
echo -e "${CYAN}                                Modify Your folder ownership                              ${NC}"
echo ""
echo "================================================================================================"
echo ""

read -p  "1. Enter Directory Path :  " file
read -p  "2. Enter New owner  :  " own


        sudo chown -R $own $file
echo ""

        ls -l


        fi
 
