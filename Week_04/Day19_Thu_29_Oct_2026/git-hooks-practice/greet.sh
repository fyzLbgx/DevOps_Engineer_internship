#!/bin/bash
name="$1"
echo "Hello $name"
cd /tmp || exit 1
echo "Now working in /tmp"
