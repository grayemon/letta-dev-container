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

## Available Skills

### Code Review Skills (obra/superpowers)
- **requesting-code-review** - Dispatch code-reviewer subagent to catch issues before they cascade. Use when completing tasks, implementing major features, or before merging to verify work meets requirements.
- **receiving-code-review** - Handle code review feedback with technical rigor and verification. Use when receiving feedback, before implementing suggestions, especially if feedback seems unclear or technically questionable.

### Docker Skills (pluginagentmarketplace/custom-plugin-docker)
Complete Docker coverage for containerized applications:

- **dockerfile-basics** - Learn Dockerfile fundamentals and best practices
- **docker-multi-stage** - Multi-stage builds for optimized, minimal production images
- **docker-optimization** - Optimize Docker images and containers for size, build speed, and runtime performance
- **docker-compose-setup** - Set up multi-container applications with Docker Compose
- **docker-networking** - Configure Docker networking for containers including bridge, overlay, and service discovery
- **docker-volumes** - Implement persistent storage with Docker volumes, bind mounts, and backup strategies
- **docker-registry** - Private registry setup, image management, and multi-registry operations
- **docker-debugging** - Container debugging and troubleshooting techniques for production issues
- **docker-production** - Deploy Docker containers to production with monitoring, logging, and health checks
- **docker-ci-cd** - Docker integration with CI/CD pipelines for automated builds, testing, and deployments
- **docker-security** - Secure Docker containers and images with hardening, scanning, and secrets management
- **docker-swarm** - Docker Swarm orchestration, cluster management, and production deployments

### Letta Development Skills (letta-ai/skills)
- **agent-development** - Comprehensive guide for developing Letta agents, including architecture selection, memory design, model selection, and tool configuration
- **letta-api-client** - Build applications with the Letta API for persistent agents with memory and long-term learning. Covers SDK patterns for Python and TypeScript with 24 working code examples

### Additional Skills
- **acquiring-skills** - Guide for safely discovering and installing skills from external repositories
- **converting-mcps-to-skills** - Connect to MCP servers and create skills for repeated use
- **creating-skills** - Guide for creating effective skills
- **finding-agents** - Find other agents on the server
- **initializing-memory** - Comprehensive guide for initializing or reorganizing agent memory
- **messaging-agents** - Send messages to other agents
- **migrating-from-codex-and-claude-code** - Find and search historical conversation data
- **migrating-memory** - Migrate memory blocks between agents
- **searching-messages** - Search past messages to recall context
- **syncing-memory-filesystem** - Manage git-backed memory repos
- **working-in-parallel** - Guide for working in parallel with other agents

## Installation

### Install All Skills at Once
```bash
# Code review skills
npx skills add obra/superpowers

# Docker skills
npx skills add pluginagentmarketplace/custom-plugin-docker

# Letta development skills
npx skills add letta-ai/agent-development
npx skills add letta-ai/letta-api-client

# Acquiring skills (discover more)
npx skills add letta-ai/skills
```

### Install Individual Skills
```bash
# Specify individual skill from a repository
npx skills add <owner/repo> --skill <skill-name>

# Example:
npx skills add obra/superpowers --skill requesting-code-review
```

## VS Code Devcontainer

The container is configured for VS Code Remote - Containers with these extensions:
- Python (debugger, pylint)
- TypeScript/ESLint/Prettier
- Tailwind CSS
- GitHub Copilot
