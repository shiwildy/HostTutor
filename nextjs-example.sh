#!/bin/bash

# >> Load environment loader
source /lib/envloader

# >> Define application.
export runner="node22"
export appid="appname"
export port="port"

# >> Load the environment variables set previously
loadenv

if [[ $1 == 'start' ]]; then
    npm run start
elif [[ $1 == 'stop' ]]; then
    stop
fi
