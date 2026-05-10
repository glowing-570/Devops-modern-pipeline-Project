# DevOps Modern End-to-End Deployment Pipeline

A complete DevOps pipeline that builds, containerizes, provisions, configures, and deploys two applications to AWS — fully automated with CI/CD.

---

## Tech Stack

| Tool | Purpose |
|------|---------|
| Docker & Docker Compose | Containerization |
| Terraform | AWS Infrastructure (IaC) |
| Ansible | Server Configuration & Deployment |
| GitHub Actions | CI/CD Automation |
| Kubernetes (Minikube) | Container Orchestration (Bonus) |

---

## Applications

| App | Stack | Port |
|-----|-------|------|
| Portfolio Website | HTML/CSS served via Nginx | 8080 |
| Java Web App | Java + Vaadin + Apache Tomcat | 8081 |

---

## Live URLs

| App | URL |
|-----|-----|
| Portfolio | http://44.200.198.162:8080 |
| Java App | http://44.200.198.162:8081 |

---

## Project Structure

```
├── portfolio-app/        HTML/CSS portfolio website
├── java-app/             Java application source code
├── terraform/            AWS infrastructure as code
│   ├── main.tf
│   ├── vpc.tf
│   ├── ec2.tf
│   └── variables.tf
├── ansible/              Server config and deployment
│   ├── inventory.ini
│   ├── setup.yml
│   └── deploy.yml
├── k8s/                  Kubernetes manifests
│   ├── portfolio-deployment.yaml
│   └── java-app-deployment.yaml
├── .github/
│   └── workflows/
│       └── deploy.yml    GitHub Actions pipeline
├── docker-compose.yml    Multi-container orchestration
└── README.md
```

---

## Part 1 — Containerization

Both apps are containerized with Docker and run together using Docker Compose.

Each app has its own Dockerfile:
- Portfolio uses an Nginx base image
- Java app uses a Tomcat base image with the WAR file deployed

**Start both containers:**
```
docker compose up -d --build
```

**Check running containers:**
```
docker ps
```

---

## Part 2 — Infrastructure as Code (Terraform)

Terraform provisions all AWS resources from scratch.

**Resources created:**
- VPC with public subnet
- Internet Gateway and Route Table
- EC2 instance (Ubuntu 22.04, t3.micro)
- Security Groups (ports 22, 80, 8080, 8081)

**Commands:**
```
cd terraform
terraform init
terraform validate
terraform plan
terraform apply
```

---

## Part 3 — Configuration Management (Ansible)

Ansible connects to the EC2 server and automates setup and deployment.

**What it does:**
- Installs Docker and Docker Compose on the server
- Copies app files to the server
- Runs Docker Compose to start both containers

**Commands:**
```
cd ansible
ansible-playbook -i inventory.ini setup.yml
ansible-playbook -i inventory.ini deploy.yml
```

---

## Part 4 — CI/CD Pipeline (GitHub Actions)

The pipeline runs automatically every time code is pushed to the main branch.

**Pipeline stages:**
1. Code Checkout
2. Java Build with Maven
3. Configure AWS Credentials
4. Terraform Init, Validate and Plan
5. Install Ansible
6. Run Ansible Setup Playbook
7. Run Ansible Deploy Playbook
8. Verify Portfolio App is live
9. Verify Java App is live

---

## Bonus — Kubernetes (Minikube)

Both apps are also deployable on Kubernetes using the manifests in the k8s/ folder.

**Commands:**
```
minikube start
kubectl apply -f k8s/
kubectl get pods
kubectl get services
minikube service portfolio-service --url
minikube service java-service --url
```

---

## Prerequisites

- Docker and Docker Compose
- Terraform
- Ansible
- AWS CLI (configured with credentials)
- Java 17 and Maven
- kubectl and Minikube

---

## Author

**Glowing Star** — Cloud and DevOps Engineer
