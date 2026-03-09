#!/bin/bash
set -e

echo "🚀 Starting healthcheck server on port 8998..."
uvicorn healthcheck:app --host 0.0.0.0 --port 8998 --log-level warning &

echo "✅ Dev container ready. Python: $(python --version) | Node: $(node --version)"
exec tail -f /dev/null
