#!/usr/bin/env bash
# Install Copilot skills into ~/.copilot/skills

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SKILLS_SRC="${DOTFILES_DIR}/copilot/skills"
SKILLS_DST="${HOME}/.copilot/skills"

mkdir -p "${SKILLS_DST}"

for skill in "${SKILLS_SRC}"/*/; do
  skill_name="$(basename "${skill}")"
  rm -rf "${SKILLS_DST}/${skill_name}"
  cp -rL "${skill}" "${SKILLS_DST}/${skill_name}"
  echo "  ✅ Installed skill: ${skill_name}"
done
