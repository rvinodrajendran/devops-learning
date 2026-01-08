#!/bin/bash

read -p "Enter process name: " PROCESS

echo "Programe name : $PROCESS"

if pgrep "$PROCESS" > /dev/null; then
  echo "Process is running"
else
  echo "Process is not running"
fi
