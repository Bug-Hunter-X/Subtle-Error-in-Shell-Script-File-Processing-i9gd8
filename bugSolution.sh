#!/bin/bash

# This script processes a file, handling errors robustly.

filename="my_file.txt"

if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' not found"
exit 1
fi

while IFS= read -r line; do
  if [[ "$line" =~ ^-?[0-9]+$ ]]; then
    number=$line
    result=$((number * 2))
    echo "Doubled: $result"
  else
    echo "Warning: Line '$line' is not a number; skipping..."
  fi
done < "$filename"

echo "File processing complete"
