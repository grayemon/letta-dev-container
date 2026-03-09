# Letta Development Container

Containerized development environment for Letta Code agents.

## Quick Start

```bash
# Copy environment template
cp env.example .env

# Add your Letta API key to .env

# Start the dev container
docker-compose up -d

# Check health
curl http://localhost:8998/health
```

## What's Included

- **Python 3.12** with FastAPI (healthcheck server)
- **Node.js 20** with TypeScript
- **Letta Code CLI** installed globally
- **VS Code devcontainer** with extensions pre-configured
- **Non-root user** (devuser:1001) for security

## Environment Variables

Required in `.env`:
- `LETTA_API_KEY` - Get from [Letta Dashboard](https://app.letta.com/api-keys)
- `LETTA_BASE_URL` - Default: `https://api.letta.ai`
- `PORT` - Default: `8999`

## Container Access

```bash
# Access container shell
docker exec -it dev-env bash

# Stop container
docker-compose down
```

## Ports

- `8283` - Letta instances (optional)
- `8998` - Healthcheck (internal)
- `8999` - Web preview
- `9000-9010` - On-demand microservices

## Recommended Skills

### Code Review Skills (obra/superpowers)
```bash
npx skills add https://github.com/obra/superpowers --skill requesting-code-review
npx skills add https://github.com/obra/superpowers --skill receiving-code-review
```

### Docker Skills (pluginagentmarketplace/custom-plugin-docker)
```bash
npx skills add https://github.com/pluginagentmarketplace/custom-plugin-docker --skill docker-ci-cd
npx skills add https://github.com/pluginagentmarketplace/custom-plugin-docker --skill docker-compose-setup
npx skills add https://github.com/pluginagentmarketplace/custom-plugin-docker --skill docker-debugging
npx skills add https://github.com/pluginagentmarketplace/custom-plugin-docker --skill docker-multi-stage
npx skills add https://github.com/pluginagentmarketplace/custom-plugin-docker --skill docker-networking
npx skills add https://github.com/pluginagentmarketplace/custom-plugin-docker --skill docker-optimization
npx skills add https://github.com/pluginagentmarketplace/custom-plugin-docker --skill docker-production
npx skills add https://github.com/pluginagentmarketplace/custom-plugin-docker --skill docker-registry
npx skills add https://github.com/pluginagentmarketplace/custom-plugin-docker --skill docker-security
npx skills add https://github.com/pluginagentmarketplace/custom-plugin-docker --skill docker-swarm
npx skills add https://github.com/pluginagentmarketplace/custom-plugin-docker --skill docker-volumes
npx skills add https://github.com/pluginagentmarketplace/custom-plugin-docker --skill dockerfile-basics
```

For more skills, visit: https://skills.sh

## VS Code Devcontainer

The container is configured for VS Code Remote - Containers with these extensions:
- Python (debugger, pylint)
- TypeScript/ESLint/Prettier
- Tailwind CSS
- GitHub Copilot
