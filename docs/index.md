cat > docs/index.md <<'EOF'
# DevOps Final Lab - Documentation

## Architecture
(put your diagram / explanation)

## Terraform
- VPC, subnets, routes, IGW, NAT
- Security Groups
- EC2 instances + EIP
- ECR

## Ansible
- Docker install
- App deploy (web server)
- Monitoring stack (Prometheus, Grafana)
- Node Exporter (web server)

## Monitoring
- Prometheus targets
- Grafana dashboards

## Cloudflare
- web.ijat-engine.com → EIP
- monitoring.ijat-engine.com → Cloudflare Tunnel

EOF




