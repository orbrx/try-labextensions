#!/bin/bash
set -e

# Get current branch name
BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)

# If we're on main, skip installation
if [ "$BRANCH_NAME" = "main" ]; then
  echo "On main branch, skipping installation"
  exit 0
fi

# Install extension from branch name
EXTENSION="$BRANCH_NAME"
echo "Installing extension from branch name: ${EXTENSION}"

pip install "${EXTENSION}"
echo "Installation complete!"