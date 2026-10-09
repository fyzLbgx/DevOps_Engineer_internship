#!/bin/bash



# This script print hosyame ip adressof host pc and disk usage to terminal 
#
# Explanation
#
# hosname is a simple command in linux. upon runninh hostname it will output the name of host pc. hostame can be used to identfity machine over network. in linux 
# $( ... ) is called a command substitution. the paranthesis tell linux to run command inside them first the grab text the command prints out. 
#
# hostname -I command is used to print ip adress and pipe it to awk .using awk command using $1 parameter. awk by default use space as a delimeter
#

echo "Hostname: $(hostname)"

echo " "

echo "IP Address: $(hostname -I | awk '{print $1}')" 

echo " "

echo "Disk Usage"

df -h /
