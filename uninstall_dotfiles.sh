#!/bin/bash

# uninstall_dotfiles.sh
# WARNING: Run this script with caution! It will remove symbolic links for your dotfiles.
# Use this only if you know what you're doing or enjoy living on the edge. 😅

# Function to display a warning and confirm the user's intention
function confirm_uninstall() {
  echo "⚠️ WARNING: This script will remove symbolic links for your dotfiles."
  echo "It won't touch your original files, but proceed with caution."
  read -p "Are you sure you want to proceed? (yes/no): " choice
  if [[ "$choice" != "yes" ]]; then
    echo "Uninstallation canceled. Nothing was changed. 🚫"
    exit 1
  fi
}

# Function to remove symbolic links
function uninstall_dotfiles() {
  DOTFILES_DIR="$(pwd)" # Assuming the script is run from the dotfiles repository root
  CONFIGS=("nvim" "kitty" "tmux" "other-stuff") # Add your stow folder names here

  echo "🔄 Starting the uninstallation process..."
  for config in "${CONFIGS[@]}"; do
    echo "🚮 Unstowing $config..."
    stow -D "$config" -t "$HOME" || {
      echo "❌ Failed to unstow $config. Check if the directory exists or if symbolic links are present."
    }
  done

  echo "✅ Uninstallation complete. Your dotfiles have been unlinked!"
}

# Run the script
confirm_uninstall
uninstall_dotfiles

