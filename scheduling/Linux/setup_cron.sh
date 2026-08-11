#!/bin/bash

VENV_PYTHON="/home/danb/.pyenv/versions/3.11.13/envs/openinterpreter-env/bin/python"
SCRIPT_PATH="/home/danb/Code/a-i-gent-workflow/main.py"

(
    crontab -l 2>/dev/null
    echo "# Setting up jobs [ $(date) ]"
    echo "* * * * * $VENV_PYTHON $SCRIPT_PATH"
    echo "* * * * * echo \"Test at \$(date)\" >> /tmp/cron_test.log"
) | crontab -

echo "Finished. Current crontab:"
crontab -l