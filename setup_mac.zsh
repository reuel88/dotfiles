#!/usr/bin/env zsh

echo "\n<<< Starting Mac Setup >>>\n"

echo "Remove ApplePressAndHoldEnabled on webstorm"
defaults write com.jetbrains.webstorm ApplePressAndHoldEnabled -bool false