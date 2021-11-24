#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed"
else
  echo "Installing Node & NPM with NVM"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
fi

# Install Global NPM Packages
# Check node packages that are out of date
npm install --global npm-check-updates

echo "Global NPM Packages Installed:"
npm list --global --depth=0