#!/bin/bash

# ---------------------------------------------------- Banner creation ----------------------------------

echo "==================================================================================================="

echo ""
echo "				TerraBash v1.0 Beta (Terraform & Bash Generator)						 "

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

echo "1. Terraform Generator "
echo ""
echo "2. Bash Generator"
echo ""
echo "3. Exit"
echo ""
read -p "Please choose one option to proceed : " option

echo ""
echo "==================================================================================================="

#---------------------------------------------- Terraform Generator start from here ---------------------
echo ""
echo ""

if [ $option = 1 ]; then 
	
	clear

	bash modules/terraform.sh
	
	#echo " 1 is working "


	elif [ $option = 2 ]; then

		#$bash.sh

		echo " 2 is working "

	else 
		echo "Thanks for using TerraBash v1.0 Beta"
	fi



#-----------------------------------------------Os Detection ---------------------------------------------


