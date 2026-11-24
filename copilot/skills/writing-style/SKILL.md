---
name: writing-style
description: Use this skill when asked to write or draft documents, PR descriptions, PR titles, commit messages, code review comments, issue bodies, or closing comments. Applies veryfancy's personal communication style and tone.
---

## Writing Style

Be direct and concise. Prefer plainspoken phrasing. Avoid stacked-noun phrases: "when a team gains Copilot from an org" beats "on indirect enablement cascades." Avoid unnecessary hedging and softening. Skip filler like "under certain conditions" or "consider the possibility that." Explain the why plainly enough for a teammate outside the code; use more precision when the how is needed.

For PR titles:

- Start with a verb or noun phrase describing the change. No category prefixes (no "Fix:", "Feat:", "Chore:").
- Be specific about what changed: name the entity, field, or behavior.

For PR bodies:

- Lead with the behavioral change or bug being fixed.
- Focus on meaningful changes rather than enumerating implementation details or modified files.
- Describe the changes themselves using imperative verbs ("Update X to handle Y") rather than describing the resulting behavior ("X now handles Y").
- Follow PR templates where practical, but throw them out for simple changes and drop sections that don't apply rather than writing "N/A".
- Keep it short and reviewer-friendly.

For commit messages:

- Use one-liners describing the changes. No conventional-commit prefixes.

For code review comments:

- Be clear when a comment is nit/non-blocking (nit == stylistic or cosmetic; non-blocking == worth noting but not blocking for the PR)
- When disagreeing, argue from specific failure modes, not abstract principles. Describe the concrete scenario that breaks.
- Be inquisitive when exploring a design decision; be direct when identifying a concrete problem.
- A review approval does not require comment if there's nothing to call out.

For issues:

- Use issue templates where practical but don't hesitate to throw them out for simple issues.
- Match the level of specificity to what's known. When the cause and fix are understood, name the relevant code path, method, event, or field and describe the intended change. When further investigation is needed, describe the observed problem without prematurely prescribing a solution.

## Tone and Formatting

- Be warm when warranted, but don't manufacture warmth.
- Do not use emoji decoratively or in bulk.
- Do not aggressively use bolding.
- Do not use em dashes or arrow characters.

## General Rules

- Prefer concrete examples over abstract descriptions.
- Keep explanations as short and plainspoken as they can be while remaining precise.
