# syntax=docker/dockerfile:1
# Use a lightweight stable base
FROM python:3.12-slim-bookworm

# Security metadata for container scanning tools
LABEL security.scan.enabled="true" \
      security.compliance="CIS-Docker-Benchmark" \
      maintainer="dev@letta.com" \
      description="Development environment for Letta Code agents"

# Avoid prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install Node.js, curl, and essential build tools
# Note: Using Node.js 20.x LTS for stability
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt,sharing=locked \
    apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    build-essential \
    ca-certificates \
    && curl -fsSL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh \
    && bash nodesource_setup.sh \
    && apt-get install -y nodejs \
    && rm -f nodesource_setup.sh \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install global npm packages
RUN --mount=type=cache,target=/root/.npm,sharing=locked \
    npm install -g @letta-ai/letta-code typescript ts-node

# Install Python packages for the healthcheck server
RUN pip install --no-cache-dir fastapi uvicorn

# Create a non-root user for security
RUN groupadd -g 1001 devuser && \
    useradd -u 1001 -g devuser -m -s /bin/bash devuser

# Set working directory and copy entrypoint files
WORKDIR /workspace
COPY --chown=devuser:devuser healthcheck.py ./healthcheck.py
COPY --chown=devuser:devuser start.sh ./start.sh
RUN chmod +x start.sh

# Document ports:
# 8998 = internal healthcheck (FastAPI)
# 8999 = main web preview port
EXPOSE 8998 8999 8283

# Switch to non-root user
USER devuser

# Security Notes:
# - Cannot use --read-only filesystem due to workspace volume mount (for live code editing)
# - Running as non-root user (devuser:1001) reduces attack surface
# - Minimal base image (slim-bookworm) reduces package vulnerabilities
# - Consider adding CAP_DROP for production deployments

# Healthcheck hits the FastAPI /health endpoint
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
    CMD curl -f http://localhost:8998/health || exit 1

# Boot the healthcheck server then keep container alive
CMD ["/workspace/start.sh"]
