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

echo -e "${CYAN}					  Terraform Import${NC}						 "

echo ""
echo ""
 
echo "==========================================================================================="

echo ""
echo ""

echo -e "${YELLOW}1.${NC} EC2 Instance"
echo -e "${YELLOW}2.${NC} S3 Bucket"
echo -e "${RED}3.${NC} Back"
echo ""
read -p " Please choose one option to proceed : " ans
echo ""

    if [ "$ans" = 1 ]; then 

        read -p "Enter EC2 Instance ID: " id

        terraform init

        if terraform import aws_instance.imported "$id"; then

            echo "Successfully imported"

            terraform state list
            terraform state show aws_instance.imported

        read -p "Want to perform Terraform Plan (y/n): " plan

        if [ "$plan" = "y" ]; then
        terraform plan
        fi

        else

            echo "Import failed"
        fi
    fi
        #terraform import aws_instance.example "$id"

        #terraform state list

        #terraform state show aws_instance.example

        
        #echo -e "${GREEN} Succesfully Worked ${NC} "

        #read -p " Want to perform Terraform Plan     ( y/n ) " plan

         #   if [ "$plan" = "y" ]; then

		  #      terraform plan

		   # fi


    elif [ "$ans" = 2 ]; then 

        read -p "Enter S3 Bucket Name: " id2

        terraform init

        terraform import aws_s3_bucket.manual_bucket "$id2"

        terraform state list

        terraform state show aws_s3_bucket.manual_bucket

        echo ""

        echo -e "${GREEN} Succesfully Worked ${NC} "

        read -p " Want to perform Terraform Plan     ( y/n ) " plan

            if [ "$plan" = "y" ]; then

		        terraform plan

		    fi

    elif [ "$ans" = 3 ]; then 

        bash terrabash.sh
    
    
    fi