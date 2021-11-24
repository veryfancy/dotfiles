#!/bin/bash
if ! [ -x "$(command -v zsh)" ]
then
  echo "installing zsh"
  if [ "$(uname -s)" == "Darwin" ]
  then
    brew install zsh
  else
    sudo apt install -y zsh
  fi

else
  echo "zsh already installed"
  zsh --version
fi

# Install Oh My Zsh
if [ -d "$HOME/.oh-my-zsh/" ]
then
  echo "Oh My Zsh already installed"
else
  # https://github.com/ohmyzsh/ohmyzsh#unattended-install
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Install Pure Prompt
# https://github.com/sindresorhus/pure#manually
mkdir -p "$HOME/.zsh"
if [ -d "$HOME/.zsh/pure" ]
then
  echo "Pure prompt already installed"
else
  git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
fi

# Install zsh-autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
AUTOSUGGESTIONS_DIR=${ZSH_CUSTOM:-"$HOME/.oh-my-zsh/custom"}/plugins/zsh-autosuggestions
if [ -d "$AUTOSUGGESTIONS_DIR" ]
then
  echo "zsh-autosuggestions already installed"
else
  git clone https://github.com/zsh-users/zsh-autosuggestions "$AUTOSUGGESTIONS_DIR"
fi

# Copy over .zshrc file
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
echo "Copying .zshrc file from $SCRIPT_DIR/.zshrc to $HOME/"
cp "$SCRIPT_DIR/.zshrc" "$HOME"
