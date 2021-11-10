#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# Installation unnecessary; it's in the Brewfile.

# writes '/usr/local/bin/zsh' into the accepted shells available
echo "Enter superuser (sudo) password to edit '/etc/shells'"
echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null

# chsh means change shell
# This sets the default shell to zsh
echo "Enter user password to change login shell"
chsh -s '/usr/local/bin/zsh'