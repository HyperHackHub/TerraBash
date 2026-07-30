# TerraBash

> A Bash-powered Terraform Automation Toolkit for AWS Infrastructure Provisioning.

---

## Overview

TerraBash is an open-source automation toolkit written entirely in Bash that simplifies Terraform project creation for AWS.

Instead of manually writing Terraform configuration files, TerraBash generates production-ready Terraform templates through an interactive command-line interface.

The project is designed for students, DevOps engineers, cloud enthusiasts, and cybersecurity professionals who want to deploy AWS infrastructure quickly without repeatedly writing Terraform code.

---

## Features

- Interactive Command Line Interface
- Automatic Terraform Installation
- Automatic Terraform Initialization
- Basic EC2 Generator
- Multi EC2 Generator
- S3 Bucket Generator
- Terraform Validation
- Terraform Planning
- Terraform Apply
- Automatic Project Generation
- Lightweight Bash Framework
- Ubuntu Support
- Amazon Linux Support

---

## Current Generators

| Generator | Status |
|-----------|--------|
| Basic EC2 | ✅ Stable |
| Multiple EC2 | ✅ Stable |
| S3 Bucket | 🚧 In Development |
| VPC | Planned |
| Security Groups | Planned |
| IAM | Planned |
| RDS | Planned |
| Load Balancer | Planned |

---

## Project Structure

```
TerraBash/
│
├── Documentation/
├── modules/
├── output/
├── templates/
├── terrabash.sh
├── run_this_first.sh
└── README.md
```

---

## Installation

Clone the repository

```bash
git clone https://github.com/<username>/TerraBash.git

cd TerraBash
```

Run the setup script

```bash
chmod +x run_this_first.sh

./run_this_first.sh
```

Launch TerraBash

```bash
./terrabash.sh
```

---

## How TerraBash Works

```
User

      │

      ▼

Terrabash Menu

      │

      ▼

Select Generator

      │

      ▼

Collect User Input

      │

      ▼

Generate Terraform Files

      │

      ▼

Terraform Init

      │

      ▼

Terraform Validate

      │

      ▼

Terraform Plan

      │

      ▼

Terraform Apply

      │

      ▼

AWS Infrastructure
```

---

## Requirements

- Ubuntu 22.04+
- Amazon Linux 2023
- Git
- Bash
- Internet Connection
- AWS Account

---

## Example

Generate a Basic EC2 Instance

```
Project Name : Demo
AWS Region   : us-east-1
AMI ID       : ami-xxxxxxxx
Instance Type: t3.micro
```

TerraBash automatically generates

```
provider.tf

main.tf
```

Then optionally executes

```
terraform validate

terraform plan

terraform apply
```

---

## Screenshots

Coming Soon

---

## Roadmap

### Version 1.0

- Basic EC2
- Multiple EC2
- Automatic Terraform Installation
- Terraform Validate
- Terraform Plan
- Terraform Apply

### Version 1.1

- Security Groups
- Key Pair Generator
- Elastic IP
- Variables Support

### Version 2.0

- VPC
- RDS
- IAM
- Route53
- Load Balancer
- Auto Scaling

### Version 3.0

- Azure Support
- Google Cloud Support
- Kubernetes Deployment
- Docker Deployment

---

## Technologies Used

- Bash
- Terraform
- AWS
- Git

---


---

## GitHub

**Repository**

https://github.com/HyperHackHub/TerraBash

**GitHub Profile**

https://github.com/HyperHackHub

---

## Author

**Developed by:** Ishaan

GitHub: https://github.com/HyperHackHub

Repository: https://github.com/HyperHackHub/TerraBash

---

## Support

If you find TerraBash useful, consider:

- ⭐ Starring the repository
- 🐞 Reporting bugs through GitHub Issues
- 💡 Suggesting new features
- 🔧 Contributing to the project

Repository:
https://github.com/HyperHackHub/TerraBash

---

## License

This project is licensed under the MIT License.
