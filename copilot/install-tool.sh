#!/usr/bin/env bash
# Install Copilot skills into ~/.copilot/skills
# In Codespaces, also install into the workspace's .github/skills
# and exclude them from git via .git/info/exclude

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

# In Codespaces, copy skills into the workspace so VS Code agent mode
# can access them without directory permission prompts
if [ "${CODESPACES}" = "true" ]; then
  for ws in /workspaces/*/; do
    [ -d "${ws}.git" ] || continue
    mkdir -p "${ws}.github/skills"
    exclude_file="${ws}.git/info/exclude"

    for skill in "${SKILLS_SRC}"/*/; do
      skill_name="$(basename "${skill}")"
      rm -rf "${ws}.github/skills/${skill_name}"
      cp -rL "${skill}" "${ws}.github/skills/${skill_name}"

      # Add to .git/info/exclude if not already present
      exclude_entry=".github/skills/${skill_name}"
      if ! grep -qxF "${exclude_entry}" "${exclude_file}" 2>/dev/null; then
        echo "${exclude_entry}" >> "${exclude_file}"
      fi
    done
    echo "  ✅ Installed skills into ${ws}.github/skills/"
  done
fi
