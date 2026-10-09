#!/bin/bash

# this script will fail due to invalid (quit) command. cut is using spaces a delimeter

set -e #if the script fail exit the script

set -o pipefail # disallow pipe failure

quit

ps -ef | grep "systemd" | grep -v grep | tr -s ' ' | cut -d' ' -f2
