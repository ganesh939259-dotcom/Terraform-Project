# 🚀 Terraform AWS Infrastructure Automation

A complete **Infrastructure as Code (IaC)** project that provisions AWS infrastructure using **Terraform**.

This project automatically creates AWS networking resources, deploys an EC2 instance, and configures an Nginx web server using Terraform automation.

---

# 📌 Project Overview

This project uses **Terraform** to automate AWS infrastructure deployment.

The infrastructure created includes:

- Custom VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- EC2 Instance
- Nginx Web Server
- Elastic IP
- S3 Remote Backend
- DynamoDB State Locking

---

# 🏗️ Architecture

```
                    User
                      |
                      |
                  Internet
                      |
                      |
             Internet Gateway
                      |
                      |
                  AWS VPC
                      |
                      |
              Public Subnet
                      |
                      |
              Security Group
                      |
                      |
               EC2 Instance
                      |
                      |
              Nginx Web Server
                      |
                      |
              Website Access
```

---

# 🛠️ Technologies Used

- Terraform
- AWS Cloud
- Amazon VPC
- Amazon EC2
- Amazon S3
- Amazon DynamoDB
- Nginx
- Linux
- Git & GitHub

---

# 📂 Project Structure

```
Terraform-AWS-Infrastructure/
│
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── backend.tf
├── terraform.tfvars
├── install-nginx.sh
├── .gitignore
└── README.md
```

---

# ⚙️ Prerequisites

Before deploying this project, install the following:

## Terraform Installation

Check Terraform version:

```bash
terraform version
```

Example:

```
Terraform v1.x.x
```

---

## AWS CLI Configuration

Check AWS CLI:

```bash
aws --version
```

Configure AWS credentials:

```bash
aws configure
```

Enter:

```
AWS Access Key ID
AWS Secret Access Key
AWS Region
Default Output Format
```

---

# 🚀 Terraform Deployment Steps

## Step 1: Clone Repository

```bash
git clone <your-github-repository-url>
```

Go inside project folder:

```bash
cd Terraform-AWS-Infrastructure
```

---

# Step 2: Initialize Terraform

Initialize Terraform providers:

```bash
terraform init
```

Expected output:

```
Terraform has been successfully initialized!
```

---

# Step 3: Validate Terraform Configuration

Check configuration files:

```bash
terraform validate
```

Expected output:

```
Success! The configuration is valid.
```

---

# Step 4: Create Terraform Plan

View resources that Terraform will create:

```bash
terraform plan
```

Example:

```
Plan: 8 to add, 0 to change, 0 to destroy
```

---

# Step 5: Deploy AWS Infrastructure

Apply Terraform configuration:

```bash
terraform apply
```

Confirm:

```
yes
```

Terraform will create:

- VPC
- Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance
- Nginx Server

---

# 🌐 Access Web Server

After successful deployment, Terraform provides the EC2 public IP.

Open browser:

```
http://<EC2-PUBLIC-IP>
```

Expected output:

```
Welcome to nginx!
```

---

# 🗄️ Terraform Remote Backend

This project uses an AWS S3 bucket as a remote backend.

## Benefits:

- Secure Terraform state storage
- Team collaboration
- State backup
- Centralized management

---

# 🔒 DynamoDB State Locking

DynamoDB is used for Terraform state locking.

Benefits:

- Prevents multiple Terraform executions
- Avoids state conflicts
- Provides safe infrastructure changes

---

# 🔐 Security Implementation

Security practices followed:

- AWS credentials are not stored in code
- Sensitive files added to `.gitignore`
- Security Groups control network access
- Terraform state stored remotely
- IAM permissions are managed securely

---

# 🧹 Destroy Infrastructure

To delete all AWS resources created by Terraform:

```bash
terraform destroy
```

Confirm:

```
yes
```

---

# 📋 Terraform Commands Reference

| Command | Description |
|---------|-------------|
| terraform init | Initialize Terraform |
| terraform validate | Validate configuration |
| terraform plan | Preview changes |
| terraform apply | Deploy infrastructure |
| terraform destroy | Remove infrastructure |
| terraform show | Display resources |
| terraform output | Show outputs |
| terraform state list | List Terraform resources |

---

# 📈 Future Enhancements

- Add Application Load Balancer
- Add Auto Scaling Group
- Add Jenkins CI/CD Pipeline
- Add Docker Deployment
- Add CloudWatch Monitoring
- Create Terraform Modules
- Implement Multi Environment Setup

---

# 👨‍💻 Author

**Ganesh**

Cloud Engineer | DevOps Enthusiast

AWS | Terraform | Linux | CI/CD