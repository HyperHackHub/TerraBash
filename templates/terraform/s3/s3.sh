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

clear
# ---------------------------------------------------- Banner creation ----------------------------------

echo "==================================================================================================="

echo ""
echo -e "${CYAN}			    S3 Bucket Generator						${NC} "

echo ""
echo "==================================================================================================="
echo ""
echo ""

read -p " Enter Bucket Name ( It should be unique) : " ans
read -p " Enter Environment Name : " env

cat > main.tf <<EOF

resource "aws_s3_bucket" "example" {
  bucket = "$ans"

  tags = {
    Name        = "$ans"
    Environment = "$env"
 }
}

EOF


echo ""
#echo "All essential files are generated to $project_name "
echo ""
	terraform init
read -p " Want to perform Terraform validate ( y/n ) " validate
read -p " Want to perform Terraform Plan     ( y/n ) " plan
read -p " Want to perform Terraform apply    ( y/n ) " apply

echo ""

	if [ "$validate" = "y" ]; then 

		terraform validate

		if [ "$plan" = "y" ]; then

		terraform plan

		fi


		if [ "$apply" = "y" ]; then

		terraform apply -auto-approve

		echo " Everthing has configured . "

		fi 

	else 
		
		echo " Thanks for using TerraBash v1.0 ( Don't forget to do this step manually )"
		exit 

	fi 
