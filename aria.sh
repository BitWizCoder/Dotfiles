#!/bin/bash

# Default file containing URLs
default_file="urls.txt"

# Function to download a single file
download_single() {
  echo "Enter the URL of the file to download:"
  read url
  aria2c -x 16 -s 16 -k 1M "$url"
}

# Function to download multiple files from a text file
download_multiple() {
  echo "Enter the path to the file containing URLs (default: $default_file):"
  read url_file

  # Use the default file if no input is provided
  url_file="${url_file:-$default_file}"

  # Check if the file exists
  if [[ ! -f "$url_file" ]]; then
    echo "Error: File '$url_file' does not exist."
    exit 1
  fi

  # Download files using aria2c
  aria2c -x 16 -s 16 -k 1M -i "$url_file"
}

# Main menu
echo "Choose an option:"
echo "1. Download a single file"
echo "2. Download multiple files from a text file"
read choice

# Handle user choice
case $choice in
  1)
    download_single
    ;;
  2)
    download_multiple
    ;;
  *)
    echo "Invalid choice. Exiting."
    exit 1
    ;;
esac
