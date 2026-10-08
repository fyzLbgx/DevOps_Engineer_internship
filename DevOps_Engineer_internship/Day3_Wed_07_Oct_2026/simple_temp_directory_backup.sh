#!/bin/bash

#!/bin/bash

read -p "Enter a name for the backup folder: " FOLDER

mkdir -p "$FOLDER"

tar -czf "$FOLDER/backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz" /tmp 2>/dev/null
