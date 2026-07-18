## About This Project

This repository documents my journey learning Terraform and AWS by provisioning cloud infrastructure locally with LocalStack. It is designed for beginners who want practical experience with Infrastructure as Code but may not have an AWS account or want to avoid cloud costs while learning.

# Terraform LocalStack

This repository contains Terraform projects used to provision and manage AWS resources locally using LocalStack.

## Services Implemented

- Amazon S3
- Amazon EC2
- AWS Lambda
- Amazon DynamoDB (In Progress...)
- API Project (In Progress...)

## Technologies Used

- Terraform
- AWS CLI
- LocalStack
- Docker
- Ubuntu (WSL)
- Git
- GitHub


## Projects

### Amazon S3
- Created an S3 bucket using Terraform.
- Managed resources locally with LocalStack.

### Amazon EC2
- Provisioned an EC2 instance using Terraform.
- Practiced Infrastructure as Code principles.

### AWS Lambda
- Deployed a Python Lambda function using Terraform.
- Packaged and managed Lambda resources.

### Amazon DynamoDB
- Created a DynamoDB table.
- Practiced creating NoSQL resources with Terraform.

## Prerequisites

Before running these projects, install:

- Terraform
- Docker Desktop
- LocalStack
- AWS CLI
- Git


## Getting Started

Clone the repository:

```bash
git clone git@github.com:naomiopara/TERRAFORM-LOCALSTACK.git
```

Navigate to any project:

```bash
cd s3
```

Initialize Terraform:

```bash
terraform init
```

Review the execution plan:

```bash
terraform plan
```

Create the infrastructure:

```bash
terraform apply
```

Destroy the infrastructure when finished:

```bash
terraform destroy
```


## Project Structure

```
terraform-localstack/
├── api/
├── dynamodb/
├── ec2/
├── lambda/
├── s3/
├── README.md
└── .gitignore
```

## Learning Objectives

- Learn Infrastructure as Code (IaC) using Terraform.
- Practice provisioning AWS services locally with LocalStack.
- Gain hands-on experience without needing an AWS account or incurring cloud costs.
- Understand Terraform workflows (`init`, `plan`, `apply`, and `destroy`).
- Learn to organize Terraform projects using modules and best practices.
- Build practical DevOps skills with Docker, Git, and GitHub.
- Prepare projects for CI/CD automation using GitHub Actions.
- Develop a portfolio of Infrastructure as Code projects for learning and career growth.

## Author

Naomi Opara