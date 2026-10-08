#!/bin/bash

# Fayaz
#
# Date 08/10/2026
#
# This script conatins simple linux commands
#
# Verion: v3
#
set -x #we can actaully see the command that is running along with its out in debug mode


echo "Print the disk space"

df 

echo " "

echo "Print the memory"

free -g

echo " "

echo "Print the cpu"

nproc

echo " "
