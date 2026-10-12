#!/bin/bash

# ps -ef list all active processes, 

set -e #if the script fail exit the script

set -o pipefail # disallow pipe failure

ps -ef | grep "systemd" | grep -v grep | awk '{print $2}'

