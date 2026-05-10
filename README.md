# DevOps Modern End-to-End Deployment Pipeline

A complete DevOps pipeline deploying two applications on AWS using IaC, Containerization, Configuration Management, and CI/CD.

## Tech Stack

| Tool | Purpose |
|------|---------|
| Terraform | Infrastructure as Code |
| Docker & Docker Compose | Containerization |
| Ansible | Configuration Management |
| GitHub Actions | CI/CD Pipeline |
| Kubernetes (Minikube) | Container Orchestration |

## Applications

| App | Stack | Port |
|-----|-------|------|
| Portfolio | HTML/CSS + Nginx | 8080 |
| Java App | Java + Tomcat (WAR) | 8081 |

## Live URLs

| App | URL |
|-----|-----|
| Portfolio | http://44.200.198.162:8080 |
| Java App | http://44.200.198.162:8081 |

## Project Structure
├── portfolio-app/       # HTML/CSS portfolio
├── java-app/            # Java application
├── terraform/           # AWS infrastructure
├── ansible/             # Server config & deployment
├── k8s/                 # Kubernetes manifests
├── .github/workflows/   # GitHub Actions CI/CD
└── docker-compose.yml   # Multi-container setup

## How to Run

**Docker:**
docker compose up -d --build

**Terraform:**
cd terraform
terraform init && terraform apply

**Ansible:**
cd ansible
ansible-playbook -i inventory.ini setup.yml
ansible-playbook -i inventory.ini deploy.yml

**Kubernetes:**
minikube start
kubectl apply -f k8s/
kubectl get pods

## CI/CD Pipeline

Triggers automatically on every push to `main`:

1. Code Checkout
2. Java Build (Maven)
3. Terraform Init, Validate and Plan
4. Ansible Setup and Deploy
5. Verify both apps are live

## Author

Glory — Cloud & DevOps Engineer
