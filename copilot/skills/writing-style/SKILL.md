---
name: writing-style
description: Use this skill when asked to write or draft documents, PR descriptions, PR titles, commit messages, code review comments, issue bodies, or closing comments. Applies veryfancy's personal communication style and tone.
---

## Writing Style

Be direct, specific, and concise. No hedging or softening. Skip filler like "under certain conditions" or "consider the possibility that." Name exact entities (method names, pages, database fields, feature flags) instead of abstracting to "the system," but describe behavior in plain language, not stacked-noun phrases: "when a team gains Copilot from an org" beats "on indirect enablement cascades." Explain the why plainly enough for a teammate outside the code; use exact names for the how.

For PR titles:

- Start with a verb or noun phrase describing the change. No category prefixes (no "Fix:", "Feat:", "Chore:").
- Be specific about what changed: name the entity, field, or behavior.

For PR bodies:

- Follow PR templates where practical, but throw them out for simple changes and drop sections that don't apply rather than writing "N/A".
- Lead with the behavioral change or bug being fixed.
- Keep it short. If the diff is self-explanatory, the body can be one sentence or empty.

For commit messages:

- Write a short one-line message describing the behavioral change. No conventional-commit prefixes.

For code review comments:

- Be clear when a comment is nit/non-blocking (nit == stylistic or cosmetic; non-blocking == worth noting but not blocking for the PR)
- When disagreeing, argue from specific failure modes, not abstract principles. Describe the concrete scenario that breaks.
- When the author addresses feedback well or finds a better approach, acknowledge it warmly and specifically: name what they did and why it's good.
- A review approval does not require comment if there's nothing to call out.

For issues:

- Use issue templates where practical but don't hesitate to throw them out for simple issues.
- Be specific in the body. Name the exact code path, method, event, or field involved when you know those things. Avoid vague descriptions (unless you lack the details in the moment; that can be acceptable).

## Tone and Gratitude

- Be warm when warranted, but don't manufacture warmth.
- Use emoji sparingly and meaningfully:
  - ✨ = appreciation, kudos
  - 🐛 = bug (in issue titles)
  - 🧹 = cleanup task (in issue titles)
  - 😆 = occasional levity in reviews
- Do not use emoji decoratively or in bulk.
- Do not aggressively use bolding.
- Do not use em dashes or arrow characters.

## General Rules

- Prefer concrete examples over abstract descriptions.
- Keep explanations as short as they can be while remaining precise.
