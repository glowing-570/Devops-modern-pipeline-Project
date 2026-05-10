# 🚀  DevOps Deployment Pipeline

A complete DevOps pipeline deploying two applications using industry-standard tools — from infrastructure provisioning to CI/CD automation and container orchestration.

---

## 📌 Project Overview

| Tool | Purpose |
|------|---------|
| Terraform | Infrastructure as Code (IaC) |
| Docker & Docker Compose | Containerization |
| Ansible | Configuration Management |
| GitHub Actions | CI/CD Automation |
| Kubernetes | Container Orchestration |

---

## 🧩 Applications Deployed

### 🌐 Portfolio Web Application
- **Stack**: HTML & CSS
- **Web Server**: Nginx (containerized)
- **Port**: 8080

### ☕ Java Web Application
- **Stack**: Java with Vaadin framework
- **Build Tool**: Maven (WAR file output)
- **Server**: Apache Tomcat
- **Port**: 8081

---

## 📁 Project Structure

\`\`\`
.
├── terraform/               # Infrastructure as Code
│   ├── main.tf
│   ├── vpc.tf
│   ├── ec2.tf
│   └── variables.tf
├── ansible/                 # Configuration management
│   ├── inventory.ini
│   ├── setup.yml
│   └── deploy.yml
├── k8s/                     # Kubernetes manifests
│   ├── portfolio-deployment.yaml
│   └── java-app-deployment.yaml
├── .github/
│   └── workflows/           # GitHub Actions CI/CD pipeline
│       └── deploy.yml
├── portfolio-app/           # HTML/CSS portfolio source
├── java-app/                # Java application source
├── docker-compose.yml       # Multi-container orchestration
└── README.md
\`\`\`

---

## 🐳 Containerization (Docker)

Both applications are containerized using Docker and orchestrated with Docker Compose.

### Run Both Applications
\`\`\`bash
docker compose up -d --build
\`\`\`

### Verify Running Containers
\`\`\`bash
docker ps
\`\`\`

| Container | Port |
|-----------|------|
| Portfolio (Nginx) | http://localhost:8080 |
| Java App (Tomcat) | http://localhost:8081 |

---

## 🏗️ Infrastructure as Code (Terraform)

Terraform provisions all AWS resources reproducibly.

\`\`\`bash
cd terraform
terraform init       # Initialize providers
terraform validate   # Validate configuration
terraform plan       # Preview changes
terraform apply      # Provision infrastructure
\`\`\`

**Resources Provisioned:**
- VPC with public subnet
- EC2 instance (Ubuntu 22.04)
- Internet Gateway + Route Table
- Security Groups (ports 22, 80, 8080, 8081)

---

## ⚙️ Configuration Management (Ansible)

Ansible automates server setup and application deployment.

\`\`\`bash
cd ansible

# Install Docker on the server
ansible-playbook -i inventory.ini setup.yml

# Deploy both applications
ansible-playbook -i inventory.ini deploy.yml
\`\`\`

---

## ☸️ Kubernetes Orchestration

Kubernetes manifests for scalable, production-style deployment.

\`\`\`bash
# Start Minikube
minikube start

# Deploy all resources
kubectl apply -f k8s/

# Check status
kubectl get pods
kubectl get services
\`\`\`

---

## 🔄 CI/CD Pipeline (GitHub Actions)

The pipeline triggers automatically on every push to main:

\`\`\`
Push to main
      │
      ▼
✅ Code Checkout
      │
      ▼
✅ Java Build (Maven)
      │
      ▼
✅ Configure AWS Credentials
      │
      ▼
✅ Install Ansible
      │
      ▼
✅ Run Ansible Setup
      │
      ▼
✅ Deploy with Ansible
      │
      ▼
✅ Verify Both Apps Live
\`\`\`

---

## 🌐 Live URLs

| Application | URL |
|-------------|-----|
| Portfolio App | http://44.200.198.162:8080 |
| Java App | http://44.200.198.162:8081 |

---

## 🛠️ Prerequisites

- Docker & Docker Compose
- Terraform
- Ansible
- kubectl & Minikube
- Java 17+ & Maven
- AWS CLI (configured)

---

## 👤 Author

**Glowing Star**
Cloud & DevOps Engineer

