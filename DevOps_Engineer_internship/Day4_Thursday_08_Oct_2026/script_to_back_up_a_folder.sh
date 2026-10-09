#!/bin/bash

# This script compress a directory in linux. upon running the script ask user to input a directory path after that a name to save the compressed directory. after user enter both it will save the compresses folder in /tmp directory under the name given by user.
#
# backup is just a function we define all the code in backup function and at the end calling it so it runs the code inside function block 


backup() {
  echo "Enter the absolute path of the folder to compres:"
  read folder
  echo "Enter the backup name (without .tar.gz):"
  read name
  tar -czf /tmp/$name.tar.gz "$folder"
  echo "Backup saved to /tmp/$name.tar.gz"
}

backup
