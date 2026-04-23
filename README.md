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

## Files Included
- **Case study** for portfolio and recruiter review
- **Architecture notes** to explain the stack clearly
- **Implementation runbook** for step-by-step deployment understanding
- **Security hardening notes** for operational maturity
- **Troubleshooting guide** for common failures and fixes
- **Reusable deployment scripts**
- **CI/CD pipeline definitions**

## Why This Repo Matters
A lot of people throw random screenshots into GitHub and call it engineering. This is better. It shows structured thinking, operational clarity, and enough technical depth to prove the work was understood and not merely copied.

This repository is suitable for:
- Portfolio presentation
- Job application proof of hands-on work
- Fiverr or freelance showcase material
- Technical interview walkthroughs

## Suggested Use
Pin this repository on GitHub and use the main case study in `docs/case-study.md` as the primary artifact when presenting the project.

## Author Positioning
This project is presented as a practical Linux administration and container operations case study with direct relevance to roles involving:
- Linux Systems Administration
- Infrastructure Support
- DevOps Support
- Platform Operations
- Web Stack Deployment
- Entry to mid-level cloud and systems engineering
