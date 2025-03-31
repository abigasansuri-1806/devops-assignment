#!/bin/bash
echo "Building the Node.js application..."

# Check if Node.js is installed, if not install it
if ! command -v node &> /dev/null; then
    echo "Node.js not found! Installing..."
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt install -y nodejs
fi

# Verify installation
node -v
npm -v

# Install dependencies
npm install
echo "Build completed successfully!"
