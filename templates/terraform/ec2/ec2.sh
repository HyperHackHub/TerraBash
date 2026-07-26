#!/bin/bash


echo "============================== Basic EC2 Generator ==========================================="
echo ""
echo ""

#read -p " Project Name  : " project_name
read -p " AWS Region   	: " aws_region
read -p " Access Key   	: " access_key
read -p " Secret Key   	: " secret_key
read -p " AMI ID       	: " AMI_ID
read -p " Instance Type : " instance_type
read -p " Instance Name : " instance_name


#mkdir -p "../../../output/$project_name"

#cd "../../../output/$project_name"

#---------------------------------- Provider.tf --------------------------------------------------

cat > provider.tf <<EOF
provider "aws" {
  region     = "$aws_region"
  access_key = "$access_key"
  secret_key = "$secret_key"
}
EOF


cat > main.tf <<EOF

resource "aws_instance" "web" {
  ami           = " $AMI_ID"
  instance_type = "$instance_type"
  tags = {
    Name = "$instance_name"
  }



EOF


#cat > "../../../output/$project_name/provider.tf" <<EOF
# provider "aws" {
 # region     = "$aws_region"
  #access_key = "$access_key"
  #secret_key = "$secret_key"
#}
#EOF


#cat > "../../../output/$project_name/main.tf" <<EOF


#resource "aws_instance" "web" {
 # ami           = " $AMI_ID"
  #instance_type = "$instance_type"
  #tags = {
  #  Name = "$instance_name"
  #}


#EOF

echo ""
#echo "All essential files are generated to $project_name "
echo ""
	terraform init
read -p " Want to perform Terraform validate ( y/n ) " validate
read -p " Want to perform Terraform Plan     ( y/n ) " plan
read -p " Want to perform Terraform aplly    ( y/n ) " apply

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



#echo "provider "aws" {i
 # region     = "$aws_region"
  #access_key = "$access_key"
  #secret_key = "$secret_key"
  #}" > "../../../output/$project_name/provider.tf"



  #echo "resource "aws_instance" "web" {
  #ami           = "$AMI_ID"
  #instance_type = "$instance_type"
  #tags = {
  #  Name = "$instance_name"
  #}"  > "../../../output/$project_name/main.tf"


#  cp provider.tf templates/terraform/ec2/provider.tf output/$project_name





