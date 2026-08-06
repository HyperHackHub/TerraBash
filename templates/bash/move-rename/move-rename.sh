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
echo -e "${CYAN}                              Move and Rename File / Folder                              ${NC} "

echo ""
echo "==================================================================================================="
echo ""

#echo -e "${YELLOW}1.${NC} Move File & Folder "
#echo ""
echo -e "${YELLOW}1.${NC} Rename File & Folder "
echo ""

read -p " Choose one option to proceed : " $ans
echo ""
#echo "You selected: $ans"
#echo ""
	#if [ "$ans" = "1" ]; then
	
		#read -p " Enter File/folder name : " source
		#read -p " Enter Destination Directory : " destination

		#mv "$source" "$destination"

		#echo -e "${GREEN} "


	#elif [ "$ans" = "2" ]; then 

		read -p " Enter old File/Folder name : " sr
		read -p " Enter New File/Folder name : " dr

		mv "$sr" "$dr"


	#fi

