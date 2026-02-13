# Infrastructure 🏗️🌐

This directory contains infrastructure configs and tools for running microservices stack.

### Features ✨
- 🐳 Docker Compose for local dev
- 🚦 API Gateway (nginx)
- 🔄 Service orchestration
- 📦 Shared configs & scripts

### Quick Start ⚡
1. Copy or update `.env` files as needed
2. Clone other repos on the same layer
3. Start all services: `docker compose -f docker-compose.local.yaml up --build`
4. Access gateway and services via exposed ports

You can run only infrastructure for local development. Use `just run-local-infra` or manually through `docker-compose`

### Structure
- `docker-compose.local.yaml` - Compose file for local dev
- `docker-compose.local-infra.yaml` - Compose file for local infrastructure
- `gateway/` - nginx config & Dockerfile
- `scripts/` - Scripts folder
- `justfile` - Common dev scripts
