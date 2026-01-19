<<<<<<< HEAD
# devops-final-lab

# DevOps Bootcamp Project

## Project Overview
This project demonstrates a complete DevOps workflow including:
- Infrastructure provisioning using Terraform
- Configuration management with Ansible
- Containerized application deployment
- Monitoring using Prometheus and Grafana
- CI/CD using GitHub Actions

## Access URLs (Final)
- **Web Application:** https://web.ijat-engine.com
- **Monitoring (Grafana):** https://monitoring.ijat-engine.com
- **GitHub Repository:** https://github.com/izzet5510/devops-bootcamp-project

## Infrastructure Summary
- AWS Region: ap-southeast-1
- Web Server deployed on EC2 (Dockerized)
- Monitoring stack deployed using Docker
- Secure access using Cloudflare Tunnel

## Setup Guide (High Level)
1. Provision infrastructure using Terraform
2. Configure servers using Ansible
3. Deploy application as Docker container
4. Configure monitoring with Prometheus and Grafana
5. Publish documentation using GitHub Pages
=======
---

## 13. Bonus (Optional)

### Secure Infrastructure Design
- Web application is accessed via Cloudflare Tunnel
- No direct public exposure of internal services
- Monitoring services are isolated on a dedicated server

### Least-Privilege IAM
- Dedicated IAM user for GitHub Actions
- Permissions limited to Amazon ECR access only
- Root AWS account is not used for CI/CD

### Infrastructure as Code
- Terraform is used to provision EC2 instances, security groups, and networking
- Ansible is used for application deployment and monitoring configuration

### CI/CD Automation
- GitHub Actions is used to:
  - Build Docker image
  - Push Docker image to AWS ECR
- Ansible is used to:
  - Pull image from ECR
  - Deploy container to the web server
>>>>>>> ff49a46 (Add bonus CI/CD and security documentation)
