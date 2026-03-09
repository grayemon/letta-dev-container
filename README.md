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
- **Coding skills** for Letta Code agents (git, testing, debugging, docs, code quality)

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

## Coding Skills

Pre-installed skills for Letta Code agents in `skills/`:

- **git-operations** - Git workflow automation
- **code-quality** - Linting, formatting, static analysis
- **testing** - Test execution and coverage
- **documentation** - API docs and code comments
- **debugging** - Debugging workflow and troubleshooting

Load skills:
```
/load-skills skills/
```

See `skills/README.md` for details.

## VS Code Devcontainer

The container is configured for VS Code Remote - Containers with these extensions:
- Python (debugger, pylint)
- TypeScript/ESLint/Prettier
- Tailwind CSS
- GitHub Copilot
