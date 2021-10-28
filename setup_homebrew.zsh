#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install httpie
brew install bat

# Browsers
brew install --cask --no-quarantine google-chrome
brew install --cask --no-quarantine firefox
brew install --cask --no-quarantine microsoft-edge

# IDE
brew install --cask --no-quarantine visual-studio-code
brew install --cask --no-quarantine webstorm