#!/bin/bash

#simple script that ask user prompt to enter name to find if a folder or file name matches users input. iname flag make the search case insensitive 

read -p "Enter the name to find: " NAME

find ~ -iname "*$NAME*" 2>/dev/null
