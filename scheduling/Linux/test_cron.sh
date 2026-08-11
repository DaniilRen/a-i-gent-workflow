#!/bin/bash
# test_cron_agent.sh - Test if cron can run your agent

# Set up environment
export PATH="/home/danb/.pyenv/versions/3.11.13/envs/openinterpreter-env/bin:/usr/local/bin:/usr/bin:/bin:$PATH"
export HOME="/home/danb"
export USER="danb"

# Log everything
exec > /tmp/cron_debug.log 2>&1

echo "=========================================="
echo "CRON RUN at: $(date)"
echo "=========================================="
echo "PATH: $PATH"
echo "USER: $USER"
echo "HOME: $HOME"
echo "Current directory: $(pwd)"
echo ""

# Find and show Python
PYTHON_PATH="/home/danb/.pyenv/versions/3.11.13/envs/openinterpreter-env/bin/python"
echo "Python path: $PYTHON_PATH"
$PYTHON_PATH --version
echo ""

# Run the script
echo "Running agent..."
$PYTHON_PATH /home/danb/Code/a-i-gent-workflow/main.py
EXIT_CODE=$?
echo "Exit code: $EXIT_CODE"
echo ""
echo "=========================================="
echo "CRON FINISHED at: $(date)"
echo "=========================================="