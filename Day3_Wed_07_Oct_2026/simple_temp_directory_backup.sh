#!/bin/bash

#This script back up temp directory. crete a custom folder named by the user and save the gzip file inside of it. also uses command substition output of date commad to inject in to filename 

read -p "Enter a name for the backup folder: " FOLDER

mkdir -p "$FOLDER"

tar -czf "$FOLDER/backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz" /tmp 2>/dev/null
