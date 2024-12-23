#!/bin/bash

# Corrected script that handles filenames with spaces

# Find all .txt files using find -print0 to handle filenames with spaces
files=($(find . -maxdepth 1 -name "*.txt" -print0 | xargs -0))

# Loop through the files
for file in "${files[@]}"; do
  # Attempt to process each file
  echo "Processing: $file"
  # Simulate file processing - replace with your actual processing logic
  sleep 1
  # Check if the file processing was successful
  if [[ $? -eq 0 ]]; then
    echo "Processed $file successfully"
  else
    echo "Error processing $file"
    exit 1
  fi
done