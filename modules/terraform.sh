#!/bin/bash

#---------------------------------------- OS Dectection -----------------------------------------

echo "==========================================================================================="
echo ""
echo ""

echo "					  OS Detection						 "

echo ""
echo ""
 
echo "==========================================================================================="

echo ""
echo ""

echo "1. Ubuntu "
echo "2. Amazon Linux"
echo "3. Exit "
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

		echo "Thanks for using TerraBash v1.0 Beta "

		exit

	else 
		echo "Thanks for using TerraBash v1.0 Beta "
		 
	fi


echo ""
echo " Initializing terraform ........ "

	terraform init 

echo ""
echo ""

#-------------------------------------- TerraForm Generator -------------------------------------

echo "================================= TerraForm Generator======================================"
echo ""
echo ""

echo "1. Basic EC2 "
echo "2. Multiple EC2"
echo "3. S3 Bucket "

read -p "Select Option : " res

	
echo ""


	if [ "$res" = "1" ]; then

		bash templates/terraform/ec2/ec2.sh

	elif [ "$res" = "2" ]; then 

		bash templates/terraform/multi-ec2/multi-ec2.sh

	elif [ "$res" = "3" ]; then 

		bash templates/terraform/s3/s3.sh

	else 
		echo "Thanks for using TerraBash v1.0 Beta ."
		exit 

	fi

	




	

