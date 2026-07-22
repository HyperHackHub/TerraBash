#!/bin/bash


echo "============================== Multi EC2 Generator ==========================================="
echo ""
echo ""

read -p " Project Name  	: " project_name
read -p " AWS Region    	: " aws_region
read -p " Access Key    	: " access_key
read -p " Secret Key    	: " secret_key
read -p " AMI ID        	: " AMI_ID
read -p " Instance Type		: " instance_type
read -p " Instance Name 	: " instance_name
read -p " No. of instances	: " no_instance

mkdir -p "../../../output/$project_name"

#cd "../../../output/$project_name"

#---------------------------------- Provider.tf --------------------------------------------------


cat > "../../../output/$project_name/provider.tf" <<EOF
provider "aws" {
  region     = "$aws_region"
  access_key = "$access_key"
  secret_key = "$secret_key"
}
EOF





cat > "../../../output/$project_name/main.tf" <<EOF
resource "aws_instance" "web" {

  count = $no_instance

  ami           = "$AMI_ID"
  instance_type = "$instance_type"

  tags = {
    Name = "${instance_name}-\${count.index + 1}"
  }
}
EOF






#cat > "../../../output/$project_name/main.tf" <<EOF

  
#resource "aws_instance" "web" {
  
 # count = "$no_instance"

#  ami           = "$AMI_ID"
#  instance_type = "$instance_type"
#  tags = {
#   Name = "{$instance_name}-${count.index + 1} "
#  }


#EOF

echo ""
echo "All essential files are generated to $project_name "
echo ""

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


