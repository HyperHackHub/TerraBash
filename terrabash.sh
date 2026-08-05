#!/bin/bash

###############################################################################
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
echo -e "${CYAN}			TerraBash v1.1 (Terraform & Bash Generator)						${NC} "

echo ""
echo "==================================================================================================="

#echo ""
#echo ""


#echo "   			Terraform & Bash Code Generator "
#echo ""
#echo ""

#echo "   			Version : 1.0 Beta  "

#echo ""
#echo ""

#echo "==================================================================================================="
echo ""
echo ""

# --------------------------------------------------- Main Menu Creation ---------------------------------

echo -e "${YELLOW}1.${NC} First-Time Setup "
echo ""
echo -e "${YELLOW}2.${NC} Terraform Generator "
echo ""
echo -e "${YELLOW}3.${NC} Bash Generator "
echo ""
echo -e "${YELLOW}4.${NC} Settings "
echo ""
echo -e "${YELLOW}5.${NC} Update Terrabash "
echo ""
echo -e "${YELLOW}0.${NC} Exit "




echo ""
read -p " Please choose one option to proceed : " option

echo ""
echo "==================================================================================================="

#---------------------------------------------- Terraform Generator start from here ---------------------
echo ""
echo ""

if [ $option = 1 ]; then 
	
	clear

	bash modules/first-Time_setup.sh
	
	#echo " 1 is working "


	elif [ $option = 2 ]; then
	
	clear

	bash modules/terraform.sh

		#$bash.sh

		#echo " 2 is working "

	elif [ $option = 3 ]; then 

	clear

	bash modules/bash_generator.sh


	elif [ $option = 4 ]; then

	clear

	bash modules/settings.sh


	elif [ $option = 5 ]; then 

	clear

	bash modules/update.sh
	

	else 
		echo "Thanks for using TerraBash v1.1"
	fi



#-----------------------------------------------Os Detection ---------------------------------------------


