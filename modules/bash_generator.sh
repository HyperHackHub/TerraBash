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
echo -e "${CYAN}				Bash Generator 					 ${NC}     "
echo ""
echo ""
echo "================================================================================================"

echo ""
echo ""

echo -e "${YELLOW}1.${NC} Kali linux "
echo -e "${YELLOW}2.${NC} Red Hat Linux"
echo ""
read -p " Select your os to proceed :" os
echo ""
echo ""
	if [ "$os" = "1" ]; then

	echo -e "${BLUE} Selected OS : Kali linux ${NC}"

	elif [ "$os" = "2" ]; then 
	
	echo -e "${BLUE} Selected OS : Red Hat Linux ${NC}"


	fi 
echo ""
echo ""

echo -e "${YELLOW}1.${NC} System Update & Upgrade "
echo -e "${YELLOW}2.${NC} Change File Ownership "
echo -e "${YELLOW}3.${NC} Move Files & Folders "
echo -e "${YELLOW}4.${NC} Rename Files & Folders "
echo -e "${YELLOW}5.${NC} Configure SSH "
echo -e "${YELLOW}6.${NC} Install Package "
echo -e "${YELLOW}7.${NC} Configure Nginx "
echo -e "${YELLOW}0.${NC} Back "
echo -e "${YELLOW}8.${NC} More coming soon....."
echo ""
read -p " Choose one option to proceed : " ans
echo ""

	if [ "$ans" = "1" ]; then 


		if [ "$os" = "1" ]; then 

			sudo apt update && sudo apt upgrade -y

		elif [ "$os" = "2" ]; then

			sudo yum update && sudo yum upgrade -y

		fi


	elif [ "$ans" = "2" ]; then
		
		 clear
		 bash templates/bash/user/file_folder.sh
	
	elif [ "$ans" = "3" ]; then

		clear 
		bash templates/bash/move-rename/move-rename.sh

	elif [ "$ans" = "4" ]; then

		clear
		bash templates/bash/move-rename/move-rename.sh

	elif [ "$ans" = "5" ]; then 
		clear
		bash templates/bash/ssh/ssh.sh

	elif [ "$ans" = "0" ]; then
		
		clear
		bash terrabash.sh	

	elif [ "$ans" = "6" ]; then

		clear
		bash templates/bash/package/package.sh
		#echo "Its Working "

	elif [ "$ans" = "7" ]; then

		clear
		bash templates/bash/nginx-httpd/nginx.sh

	elif [ "$ans" = "8" ]; then

		clear
		bash templates/bash/more/more.sh	

	fi

	
		 

