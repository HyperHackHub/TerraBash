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

	else 
		echo "Thanks for using TerraBash v1.0 Beta "
	
	fi


echo ""
echo " Initializing terraform ........ "

	terraform init 



	

