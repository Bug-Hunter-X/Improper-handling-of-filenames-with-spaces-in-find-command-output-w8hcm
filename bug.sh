#!/bin/bash

# This script attempts to process files in a directory,
# but it has a subtle bug that can lead to unexpected behavior.

# Find all .txt files in the current directory
files=`find . -maxdepth 1 -name "*.txt" `

# Loop through the files
for file in $files; do
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
  # This is the bug:  The file name can contain spaces. The loop splits on spaces.
 done