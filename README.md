# Terraform AWS Production Infrastructure

Production-ready AWS infrastructure designed and provisioned using Terraform.

This project demonstrates how to build a secure, scalable, highly available AWS environment using Infrastructure as Code (IaC).

## 🚀 Project Overview

The objective of this project is to demonstrate a production-style AWS infrastructure architecture that can be used as a foundation for modern applications.

The infrastructure is designed with:

- High availability
- Security
- Scalability
- Infrastructure as Code
- Environment separation
- Monitoring
- Disaster recovery considerations

## 🏗️ Architecture

The architecture includes:

- AWS VPC
- Multi-AZ deployment
- Public and private subnets
- Internet Gateway
- NAT Gateway
- Application Load Balancer
- Security Groups
- IAM roles and policies
- CloudWatch monitoring
- Terraform modules

### High-Level Architecture

```text
                    AWS CLOUD
                       │
                       ▼
                    VPC
                       │
          ┌────────────┴────────────┐
          │                         │
      AZ-1                      AZ-2
          │                         │
   ┌──────┴──────┐          ┌──────┴──────┐
   │             │          │             │
Public         Private    Public        Private
Subnet         Subnet     Subnet        Subnet
   │             │          │             │
   │          Application    │       Application
   │            Tier         │          Tier
   │             │          │             │
   └──────┬──────┘          └──────┬──────┘
          │                         │
          └────────────┬────────────┘
                       │
                  Load Balancer
                       │
                    Internet
🛠️ Technologies
| Technology | Purpose |
|---|---|
| AWS | Cloud Infrastructure |
| Terraform | Infrastructure as Code |
| VPC | Network Architecture |
| IAM | Identity & Access Management |
| Security Groups | Network Security |
| CloudWatch | Monitoring & Observability |
| GitHub | Source Control |

## 📁 Project Structure

The project follows a modular Terraform architecture:

```text
terraform-aws-production-infrastructure/
│
├── README.md
├── architecture/
│   └── architecture.md
│
├── terraform/
│   ├── main.tf
│   ├── providers.tf
│   ├── variables.tf
│   ├── outputs.tf
│   │
│   ├── modules/
│   │   ├── vpc/
│   │   ├── security/
│   │   ├── iam/
│   │   └── monitoring/
│   │
│   └── environments/
│       ├── dev/
│       └── prod/
│
└── .gitignore
