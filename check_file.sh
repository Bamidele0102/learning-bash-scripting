#!/bin/bash
# Script to check if a file exists

if [ $# -eq 0 ]; then
  echo "Usage: $0 {filename}"
  exit 1
fi

FILE="$1"

if [ -f "$FILE" ]; then
  echo "File '$FILE' exists."
else
  echo "File '$FILE' does not exist."
fi
