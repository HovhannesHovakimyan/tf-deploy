# Define the base directory
base_dir="./terraform/captionhealth.com/dev1"

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

# Print the JSON
echo SUBFOLDERS=$json | jq . >> $GITHUB_ENV