#!/usr/bin/env bash

if [[ "$OSTYPE" != "darwin"* ]]; then
    echo -e "\n!!! You do not have to use Docker on Linux or Windows to compile sourcemod plugins, you can run VSCode tasks without any additional setup.\n"
fi

docker build -t sourcemod .