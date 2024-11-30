#!/bin/bash

# =============================================
#  Example to start and stop an app in hosting
# =============================================

# >> Load environment loader
source /lib/envloader

# >> Define application.
export runner="python3"      # Define the runner (go, python3, node18, node20, node22, bun, deno)
export appid="testaja"       # Application ID (no spaces or special characters)
export port=""               # Leave empty if the app doesn't listen on a port

# >> Load the environment variables set previously
loadenv

# >> Implement the start and stop logic for your application
if [[ $1 == 'start' ]]; then
    start python3 test          # Start the app (e.g., 'python3 test' or any other app)
elif [[ $1 == 'stop' ]]; then
    stop                        # Stop the app
fi
