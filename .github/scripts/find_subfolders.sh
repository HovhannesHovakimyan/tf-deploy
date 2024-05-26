#!/bin/bash

# Define the root directory
root_dir=$ROOT_DIR

# Initialize an empty JSON object
json_output="{ \"SUBFOLDERS\": {} }"

# Loop through subfolders
for subfolder in "$root_dir"/*; do
    if [ -d "$subfolder" ]; then
        # Extract subfolder name
        subfolder_name=$(basename "$subfolder")

        # Get absolute path
        absolute_path=$(realpath "$subfolder")

        # Add subfolder name and absolute path to JSON
        json_output=$(echo "$json_output" | jq --arg name "$subfolder_name" --arg path "$absolute_path" '.SUBFOLDERS += { ($name): $path }')
    fi
done

# Set the JSON output as an environment variable
echo "SUBFOLDERS=$json_output" >> $GITHUB_ENV
echo "testenv=$root_dir" >> $GITHUB_ENV

