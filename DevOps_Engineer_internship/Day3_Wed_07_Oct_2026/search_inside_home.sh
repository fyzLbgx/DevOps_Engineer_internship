#!/bin/bash

read -p "Enter the folder name to find: " NAME

find ~ -iname "*$NAME*" 2>/dev/null
