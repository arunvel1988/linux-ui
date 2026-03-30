#!/bin/bash

set -e  # Exit on error

echo "Installing Docker Compose V2 plugin..."

# Create directory if not exists
sudo mkdir -p /usr/local/lib/docker/cli-plugins

# Set version
DOCKER_COMPOSE_VERSION="v2.24.1"

# Download Docker Compose plugin
sudo curl -SL "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-linux-x86_64" \
  -o /usr/local/lib/docker/cli-plugins/docker-compose

# Make it executable
sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose

# Verify installation
echo "Checking Docker Compose version..."
docker compose version

echo "Docker Compose V2 installation completed successfully."
