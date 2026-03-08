Azure Zero-Trust Multi-Tier Architecture (Terraform)
Overview

This project demonstrates a secure, production-grade Azure architecture built entirely using Terraform.

The design follows Zero Trust principles and implements:
Infrastructure as Code (Terraform)
Remote state backend with locking
Private Endpoint connectivity
Private DNS resolution
Azure SQL Serverless
Managed Identity for App Service
Public network access disabled
VNet integration for application layer

Architecture: ![Architecture](architecture/architecture-diagram.png)

Architecture Components
Networking

Virtual Network (10.0.0.0/16)
Application Subnet
Private Endpoint Subnet
Private DNS Zone (privatelink.database.windows.net)
DNS Zone linked to VNet
Application Layer
Azure App Service (Linux)
System-Assigned Managed Identity
VNet Integration enabled
Database Layer
Azure SQL Serverless
Public network access disabled
Private Endpoint enabled
Entra-based authentication
Least privilege database roles
Terraform Backend
Azure Storage Account
Blob container for state
State locking enabled

| Design Choice          | Reason                                            |
| ---------------------- | ------------------------------------------------- |
| Private Endpoint       | Eliminates public SQL exposure                    |
| Private DNS Zone       | Ensures internal DNS resolution                   |
| Managed Identity       | Removes need for stored credentials               |
| Remote Terraform State | Prevents state corruption & enables collaboration |
| Serverless SQL         | Cost optimization with auto-pause                 |
| Public Access Disabled | Zero public database surface                      |


Zero Trust Principles Applied

No public database access
Identity-based authentication (no embedded credentials)
Network-level isolation
Explicit DNS control
Least privilege database roles
Infrastructure defined as code
State management secured

azure-zero-trust-multitier-terraform/
│
├── main.tf
├── network.tf
├── sql.tf
├── appservice.tf
├── private-endpoint.tf
├── dns.tf
├── variables.tf
├── outputs.tf
├── backend.tf
├── random.tf
├── terraform.tfvars.example
├── .gitignore
├── architecture/
│   └── architecture-diagram.png
└── README.md