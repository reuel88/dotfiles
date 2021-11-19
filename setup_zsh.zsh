#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# Installation unnecessary; it's in the Brewfile.

# https://stackoverflow.com/a/4749368/1341838
# writes '/usr/local/bin/zsh' into the accepted shells available
if grep -Fxq '/usr/local/bin/zsh' '/etc/shells'; then
  echo '/usr/local/bin/zsh already exists in /etc/shells'
else
  echo "Enter superuser (sudo) password to edit '/etc/shells'"
  echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi

# This sets the default shell to zsh
if [ "$SHELL" = '/usr/local/bin/zsh' ]; then
  echo '$SHELL is already /usr/local/bin/zsh'
else
  # chsh means change shell
  echo "Enter user password to change login shell"
  chsh -s '/usr/local/bin/zsh'
fi

# This replaces the sh fallback to zsh
#if sh --version | grep -q zsh; then
#  echo '/private/var/select/sh already linked to /bin/zsh'
#else
#  echo "Enter superuser (sudo) password to symlink sh to zsh"
#  sudo ln -sfv /bin/zsh /private/var/select/sh
#fi