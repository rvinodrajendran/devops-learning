#!/bin/bash

read -p "Enter file or directory name: " ITEM

if [ -e "$ITEM" ]; then
  echo "Exists"
else
  echo "Does not exist"
fi

