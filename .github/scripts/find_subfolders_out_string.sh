#!/bin/bash

# Define the base directory
base_dir=$ROOT_DIR

# Find all subdirectories (excluding hidden ones)
subdirs=$(find "$base_dir" -mindepth 1 -maxdepth 1 -type d -not -path '*/.*')

# Initialize an empty string to store the results
result=""

# Loop through each subdirectory
while IFS= read -r subdir; do
    # Get the absolute path
    abs_path=$(realpath "$subdir")
    # Append to the result string
    result+="$abs_path, "
done <<< "$subdirs"

# Remove the trailing comma and space
SUBFOLDERS=${result%, }

# Print the final result
echo SUBFOLDERS="[$SUBFOLDERS]" >> $GITHUB_ENV

