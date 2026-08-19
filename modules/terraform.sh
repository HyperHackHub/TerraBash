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

#---------------------------------------- OS Dectection -----------------------------------------

echo "==========================================================================================="
echo ""
echo ""

echo -e "${CYAN}					  OS Detection${NC}						 "

echo ""
echo ""
 
echo "==========================================================================================="

echo ""
echo ""

echo -e "${YELLOW}1.${NC} Ubuntu "
echo -e "${YELLOW}2.${NC} Amazon Linux "
echo -e "${BLUE}3.${NC} Already Installed "
echo -e "${RED}4.${NC} Back "
echo ""

read -p "Please choose OS to proceed automatic terraform installation : " os 

echo ""

	if [ "$os" = 1 ]; then

		sudo wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform 

	elif [ "$os" = 2 ]; then 

		sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum install terraform

	elif [ "$os" = 3 ]; then 

		echo "Nice! "

		#exit

	elif [ "$os" = 4 ]; then
	
		clear
		bash terrabash.sh
	#else 
		#echo "Thanks for using TerraBash v1.1 Beta "
		 
	fi


echo ""
#echo " Initializing terraform ........ "

	clear
#	terraform init 

echo ""
echo ""

#-------------------------------------- TerraForm Generator -------------------------------------

echo "===========================================================================================" 
echo""			
echo""

echo " 					TerraForm Generator 					"

echo ""
echo ""
echo " =========================================================================================="

echo ""
echo ""
echo -e "${YELLOW}1.${NC} Basic EC2 "
echo -e "${YELLOW}2.${NC} Multiple EC2"
echo -e "${YELLOW}3.${NC} S3 Bucket "
echo -e "${YELLOW}4.${NC} Terraform Import "

echo ""

read -p "Select Option : " res

	
echo ""


	if [ "$res" = "1" ]; then

		bash templates/terraform/ec2/ec2.sh

	elif [ "$res" = "2" ]; then 

		
		bash templates/terraform/multi-ec2/multi-ec2.sh

	elif [ "$res" = "3" ]; then 

		bash templates/terraform/s3/s3.sh

	elif [ "$res" = "4" ]; then 

		bash templates/terraform/terraform-import/import.sh


	else 
		echo "Thanks for using TerraBash v1.0 Beta ."
		exit 

	fi

	
	
	



	

