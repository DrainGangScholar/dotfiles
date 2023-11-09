#!/bin/bash

# Array of configuration directories to copy
CONFIGS=("nvim" "kitty" "i3")

# Copy and overwrite configuration directories
for config in "${CONFIGS[@]}"; do
  if [ -d "$HOME/.config/$config" ]; then
    cp -rT "$HOME/.config/$config" "./$config"
    echo "Copied and overwritten $config configuration."
  else
    echo "Directory $HOME/.config/$config does not exist."
  fi
done

echo "All configurations have been copied."
