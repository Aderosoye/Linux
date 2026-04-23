# Linux Administration, Docker, CI/CD, and WordPress Deployment Case Study

## Overview
This repository packages a hands-on infrastructure project focused on deploying and operating a **containerized WordPress stack** on Linux. It is designed as a portfolio-grade case study showing practical capability across:

- Linux administration
- Docker and containers
- Nginx reverse proxying for WordPress
- CI/CD automation
- Operational documentation
- Security hardening and troubleshooting

The project reflects real-world admin work rather than theory-only lab notes. It demonstrates how a Linux server can be prepared, secured, used to run a WordPress application in containers, and supported with deployment and maintenance workflows.

## Project Scope
The environment is built around a Linux host running Docker Engine and Docker Compose. The application stack includes:

- **WordPress** application container
- **MariaDB** database container
- **Nginx** web tier container
- Supporting scripts for deploy, backup, first-run setup, and health checks
- CI/CD pipelines for validation and deployment

## Key Skills Demonstrated
### Linux Administration
- Server preparation and package installation
- File permission awareness
- Service management with `systemctl`
- Port and process validation
- Log inspection and troubleshooting

### Docker and Containers
- Multi-container application design with Docker Compose
- Persistent volume planning
- Environment variable configuration
- Container health validation and lifecycle management

### CI/CD
- GitLab CI pipeline for validation and deployment
- GitHub Actions workflow for equivalent deployment automation
- Secure SSH-based deployment flow
- Basic artifact and compose validation checks before release

### WordPress Operations
- WordPress deployment behind Nginx
- Database-backed content persistence
- First-run initialization
- Backup strategy for database and web content

## Repository Structure
```text
linux-admin-wordpress-case-study/
├── README.md
├── .gitignore
├── .env.example
├── .gitlab-ci.yml
├── docker-compose.yml
├── .github/workflows/deploy.yml
├── docker/nginx/default.conf
├── scripts/deploy.sh
├── scripts/backup.sh
├── scripts/first-run.sh
├── scripts/health-check.sh
├── docs/case-study.md
├── docs/architecture.md
├── docs/implementation-runbook.md
├── docs/security-hardening.md
├── docs/troubleshooting.md
└── docs/project-artifacts.md
```

