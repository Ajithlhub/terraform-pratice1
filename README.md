# Terraform Project

## Overview
This project uses Terraform to create and manage infrastructure as code (IaC) on AWS.

## Prerequisites
- AWS Account
- IAM User with Access Key and Secret Key
- Terraform installed
- AWS CLI installed and configured

## Project Structure

.
├── provider.tf
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
└── README.md

## Files Description

### provider.tf
Used to configure AWS provider.

### main.tf
Contains the main infrastructure resources like EC2, VPC, S3, RDS, etc.

### variables.tf
Defines input variables.

### terraform.tfvars
Stores actual values for variables.

### outputs.tf
Displays output values after deployment.

## Basic Commands

### Initialize Terraform

```bash
terraform init
Validate Configuration
terraform validate
Plan Infrastructure
terraform plan
Apply Changes
terraform apply
Destroy Infrastructure
terraform destroy
Example Provider
provider "aws" {
  region = "ap-south-1"
}
