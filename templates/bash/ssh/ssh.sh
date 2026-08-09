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
echo -e "${CYAN}                                Configure SSH                                   ${NC}     "
echo ""
echo ""
echo "================================================================================================"

echo ""
echo ""

echo -e "${YELLOW}1.${NC} Install SSH "
echo -e "${YELLOW}2.${NC} Generate SSH Key "
echo -e "${YELLOW}3.${NC} Back"
echo ""
read -p " Select your os to proceed :" ans
echo ""


	if [ "$ans" =  "1" ]; then 
		
		echo ""
		echo -e " ${BLUE} Installing SSH on your system........${NC}"
		echo ""

		sudo apt update 

		sudo apt install openssh-server -y
		
		sudo systemctl enable --now ssh

	elif [ "$ans" = "2" ]; then

		echo ""
		echo -e " Generating Key .................."
		echo ""

		#ssh-keygen
	

		ssh-keygen -t rsa -N "" -f my.key


		echo "------------------------------------------------------------------"
		echo ""
		echo -e "${GREEN} Your SSH Keys Saved here - /home/username/.ssh/ ${NC}"
		echo ""


	fi 
