#!/bin/bash
# simple if loop script which compare 2 vlaues to check witch is greater. in bash fiis used to close if loop  

a = 4
b = 10

if [ $a -gt $b ]
then 
   echo "a is grater than b"
else
   echo "b is grater than a"
fi
