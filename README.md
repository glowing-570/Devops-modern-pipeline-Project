# DevOps Modern End-to-End Deployment Pipeline

## Overview
Full DevOps pipeline deploying two applications on AWS using 
IaC, Containerisation, Configuration Management, and CI/CD.

## Applications
- **Portfolio App** - HTML/CSS served via Nginx on port 8080
- **Java App** - Spring/Tomcat app on port 8081

## Live URLs
- Portfolio: http://44.200.198.162:8080
- Java App: http://44.200.198.162:8081

## Tech Stack
| Tool | Purpose |
|------|---------|
| Docker + Docker Compose | Containerisation |
| Terraform | AWS Infrastructure (VPC, EC2, SG) |
| Ansible | Server config + app deployment |
| GitHub Actions | CI/CD pipeline |
| AWS EC2 | Cloud hosting |

## Project Structure
├── portfolio-app/     # HTML/CSS portfolio
├── java-app/          # Java contacts app
├── terraform/         # AWS infrastructure
├── ansible/           # Server configuration
├── .github/workflows/ # CI/CD pipeline
└── docker-compose.yml # Container orchestration
## How to Deploy
1. Run `terraform apply` to provision AWS infrastructure
2. Run `ansible-playbook -i inventory.ini setup.yml` 
3. Run `ansible-playbook -i inventory.ini deploy.yml`
4. Or just push to main — GitHub Actions handles everything!
