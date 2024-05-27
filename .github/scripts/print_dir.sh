#!/bin/bash

# Define the base directory
base_dir=$ROOT_DIR

# Initialize an empty array for subfolders
subfolders=()

# Iterate over subdirectories
while IFS= read -r -d '' subfolder; do
    # Extract the folder name
    folder_name=$(basename "$subfolder")
    # Create an associative array with name and path
    subfolder_info="{\"name\": \"$folder_name\", \"path\": \"$subfolder\"}"
    # Append to the subfolders array
    subfolders+=("$subfolder_info")
done < <(find "$base_dir" -mindepth 1 -maxdepth 1 -type d -print0)

# Create the JSON structure
json="{\"SUBFOLDERS\": ["
for ((i = 0; i < ${#subfolders[@]}; i++)); do
    json+="$(echo "${subfolders[i]}")"
    if ((i < ${#subfolders[@]} - 1)); then
        json+=","
    fi
done
json+="]}"

# Format the resulted JSON
echo $json > data.json
jq '.' data.json > fixed_data.json

# Set the JSON output as an environment variable
SUBFOLDERS=$(cat fixed_data.json)
echo SUBFOLDERS=\"$SUBFOLDERS\" >> $GITHUB_ENV
