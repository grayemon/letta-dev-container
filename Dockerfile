# Use a lightweight stable base
FROM python:3.12-slim-bookworm

# Avoid prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install Node.js, curl, and essential build tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    build-essential \
    ca-certificates \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install global npm packages
RUN npm install -g @letta-ai/letta-code typescript ts-node

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

# Healthcheck hits the FastAPI /health endpoint
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
    CMD curl -f http://localhost:8998/health || exit 1

# Boot the healthcheck server then keep container alive
CMD ["/workspace/start.sh"]
