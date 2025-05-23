#!/bin/bash
# Script to count the number of regular files in a directory

if [ $# -eq 0 ]; then
  echo "Usage: $0 {absolute_path_to_directory}"
  exit 1
fi

DIR="$1"

if [ -d "$DIR" ]; then
  COUNT=$(find "$DIR" -maxdepth 1 -type f | wc -l)
  echo "Number of files in '$DIR': $COUNT"
else
  echo "'$DIR' is not a valid directory."
fi
