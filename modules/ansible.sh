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


# ---------------------------------------------------- Banner creation ----------------------------------

echo "==================================================================================================="

echo ""
echo -e "${CYAN}			Ansible Generator ( v1.0 ) beta						${NC} "

echo ""
echo "==================================================================================================="


echo ""
echo ""

# --------------------------------------------------- Main Menu Creation ---------------------------------

echo -e "${YELLOW}1.${NC} Ansible Configuration "
echo ""
echo -e "${YELLOW}2.${NC} More Coming Soon..... "
echo ""
#echo -e "${YELLOW}3.${NC} Bash Generator "
#echo ""
#echo -e "${YELLOW}4.${NC} Settings "
#echo ""
#echo -e "${YELLOW}5.${NC} Update Terrabash "
#echo ""
#echo -e "${YELLOW}0.${NC} Exit "




echo ""
read -p " Please choose one option to proceed : " option

echo ""
echo "==================================================================================================="

#---------------------------------------------- Terraform Generator start from here ---------------------
echo ""
echo ""

if [ $option = 1 ]; then 
	
	clear

	bash /templates/Ansible/ansible-configure.sh
	
	#echo " 1 is working "


#	elif [ $option = 2 ]; then
	
#	clear

#	bash modules/terraform.sh

		#$bash.sh

		#echo " 2 is working "

#	elif [ $option = 3 ]; then 

#	clear

#	bash modules/bash_generator.sh


#	elif [ $option = 4 ]; then

#	clear

#	bash modules/settings.sh

else 
		echo "Thanks for using Ansible Generator v1.0"
	fi
#echo " Yeah its working fine" 

#       ----------------------------------------------------------------------------------



echo " Want to install Ansible on your system ? "
read -p " Press y to proceed or n to exit : " ans

if [ "$ans" = "y" ]; then
echo ""
echo " Installation of Ansible is in progress....."
echo ""

echo " Step 1: Updating package index "
    sudo apt update

echo " Step 2: Install software-properties-common (for add-apt-repository) "
    sudo apt install software-properties-common -y

echo " Step 3: Add official Ansible PPA"
    sudo add-apt-repository --yes --update ppa:ansible/ansible

echo " Step 4: Install Ansible "
    sudo apt install ansible -y

echo " Step 5: Verify Ansible installation "
    ansible --version

else 
    echo " Thanks for using Ansible Generator v1.0 "
fi

