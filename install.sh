#!/usr/bin/env bash

SCRIPT_NAME=${1:-"install.sh"}

set -x
set -e

echo "dotfiles ${SCRIPT_NAME} start: $(date)"
echo ''

# find the installers and run them iteratively
echo "🔌 Running installers..."
shopt -s globstar nullglob
for installer in **/*install-tool.sh
do
  sh -c "$installer"
done

if $CODESPACES
then
  echo "☁️ Running Codespaces post start..."
  script/codespaces-post-start
fi

# echo "🧩 Installing VS Code extensions..."
# script/install-vscode-extensions

echo ''
echo '🏁 Finished!'
