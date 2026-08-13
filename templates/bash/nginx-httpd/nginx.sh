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
echo -e "${CYAN}				NGINX Configure 					 ${NC}     "
echo ""
echo ""
echo "================================================================================================"

echo ""
echo ""

echo -e "${BLUE} Configuring Nginx on your system ..... ${NC}"
#echo -e "${YELLOW}2.${NC} Red Hat Linux"
echo ""
#read -p " Select your os to proceed :" os
#echo ""
echo ""
	
    sudo apt update 

    sudo apt install nginx -y

    sudo systemctl start nginx

    sudo systemctl enable --now nginx\

    echo "Nginx status:"
    sudo systemctl status nginx
    
    
    
    
    
    
    
    
    #if [ "$os" = "1" ]; then

	#echo -e "${BLUE} Selected OS : Kali linux ${NC}"

	#elif [ "$os" = "2" ]; then 
	
	#echo -e "${BLUE} Selected OS : Red Hat Linux ${NC}"


	#fi 