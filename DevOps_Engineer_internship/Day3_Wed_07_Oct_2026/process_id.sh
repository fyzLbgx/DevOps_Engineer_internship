#!/bin/bash

set -e #if the script fail exit the script

set -o pipefail # disallow pipe failure

ps -ef | grep "systemd" | grep -v grep | tr -s ' ' | cut -d' ' -f2
