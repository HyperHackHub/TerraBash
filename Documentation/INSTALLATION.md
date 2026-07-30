# TerraBash Installation Guide

This guide explains how to install and set up TerraBash on a supported Linux system.

---

# Supported Operating Systems

TerraBash currently supports:

- Ubuntu 22.04+
- Ubuntu 24.04+
- Amazon Linux 2023
- Kali Linux (Bash Features)

Future Support

- Debian
- Fedora
- CentOS
- Rocky Linux

---

# Prerequisites

Before installing TerraBash, make sure you have:

- Git
- Bash
- Internet Connection
- AWS Account
- IAM User with Programmatic Access

Recommended AWS Permissions

- AmazonEC2FullAccess
- AmazonS3FullAccess

---

# Clone the Repository

Clone TerraBash from GitHub.

```bash
git clone https://github.com/HyperHackHub/TerraBash.git
```

Go inside the project directory.

```bash
cd TerraBash
```

---

# Repository Structure

After cloning, your project should look like:

```
TerraBash/
│
├── Documentation/
├── modules/
├── output/
├── templates/
├── terrabash.sh
├── setup.sh
├── README.md
└── LICENSE
```

---

# Setup

Run the setup script.

```bash
chmod +x setup.sh

./setup.sh
```

The setup script will automatically:

- Make all required shell scripts executable.
- Prepare TerraBash for first use.

---

# Launch TerraBash

Start TerraBash.

```bash
./terrabash.sh
```

You should see:

```
======================================
          TerraBash v1.0 Beta
======================================

Terraform Automation Toolkit

1. Terraform Generator
2. Bash Generator
3. Exit
```

---

# First Run

Select:

```
Terraform Generator
```

Choose one of the available generators.

Example:

```
1. Basic EC2

2. Multiple EC2

3. S3 Bucket
```

---

# AWS Credentials

TerraBash will request:

```
AWS Region

AWS Access Key

AWS Secret Key
```

These credentials are used to generate the Terraform provider configuration.

---

# Terraform Workflow

After generating the project, TerraBash can automatically execute:

```
terraform init

terraform validate

terraform plan

terraform apply
```

This eliminates the need to manually type Terraform commands.

---

# Verify Installation

To verify Terraform is installed:

```bash
terraform version
```

Expected Output

```
Terraform v1.x.x
```

---

# Verify Git

```bash
git --version
```

---

# Verify Bash

```bash
bash --version
```

---

# Updating TerraBash

To update your local copy:

```bash
git pull origin main
```

---

# Uninstall

Delete the project directory.

```bash
rm -rf TerraBash
```

---

# Troubleshooting

## Permission Denied

Run:

```bash
chmod +x setup.sh

./setup.sh
```

---

## Terraform Not Found

Install Terraform again using TerraBash Installer.

---

## Git Not Installed

Ubuntu

```bash
sudo apt install git
```

Amazon Linux

```bash
sudo dnf install git
```

---

## Invalid AWS Credentials

Verify:

- Access Key
- Secret Key
- IAM Permissions
- AWS Region

---

# Need Help?

GitHub Repository

https://github.com/HyperHackHub/TerraBash

GitHub Issues

https://github.com/HyperHackHub/TerraBash/issues

---

# Installation Complete

Congratulations!

TerraBash is now installed and ready to automate your Terraform workflow.
