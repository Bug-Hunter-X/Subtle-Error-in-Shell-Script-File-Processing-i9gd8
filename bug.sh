#!/bin/bash

# This script attempts to process a file, but has a subtle error.

filename="my_file.txt"

if [ -f "$filename" ]; then
  # Process the file
  cat "$filename" | while IFS= read -r line; do
    # Assume each line contains a number.  There is no error handling for lines that are not numbers.
    number=$(echo $line | tr -d '
')
    result=$((number * 2))
    echo "Doubled: $result"
  done
  echo "File processed successfully"
else
  echo "Error: File not found"
fi