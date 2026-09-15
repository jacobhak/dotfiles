---
name: pr-ready
description: Make the current diff PR-ready by scrubbing AI/session-referential bloat. Use when asked to make a change "PR ready" or to "clean this up for review" — not a correctness or simplification pass (pair with /code-review or /simplify for that).
argument-hint: <optional: files/dirs to scope the pass to — defaults to the current diff>
allowed-tools: Read, Grep, Glob, Edit, Bash
---
Make the current change PR-ready: $ARGUMENTS

This is a hygiene pass over comments, docstrings, and diff scope — not a correctness review. It complements /code-review and /simplify, it doesn't replace them.

## Process

1. **Determine scope.** Run `git status` and `git diff --stat` to enumerate every modified and new file that's actually part of this change. Exclude unrelated pre-existing untracked files (scratch notes, other in-progress work) — don't sweep them in and don't silently ignore something that should be part of this diff.

2. **Scan every changed/new file for session-referential language**, in both comments and docstrings:
   - Backreferences to a plan/task/step ("per the plan", "Step 7", "Task A", "as discussed above").
   - Narrative about how the change came about ("the user decided", "this session", "after some back and forth", "originally we tried X but").
   - History of a bug/incident that belongs in a commit message or PR description, not a permanent code comment (a brief timeless "why" is fine; a play-by-play of the investigation is not).
   - Grep broadly first (`plan\|PLAN_\|session\|the user\|decided\|considered\|Step [0-9]\|Task [A-Z]`), then read each hit in context — greps miss paraphrased narrative, so also skim new/changed docstrings by eye.

3. **Check for dangling file references.** Any comment or docstring that names a specific file by path (e.g. a scratch `PLAN_*.md`, a `handoff-*.md`, a research notebook) — confirm that file is actually tracked or being committed alongside this change. If it isn't, either inline the needed context directly or drop the reference; never leave a comment pointing at a file that won't exist for the next reader.

4. **Rewrite, don't just delete.** Every comment that had real signal (a non-obvious invariant, a constraint, a reason something is done a certain way) should survive with the session-specific wrapping removed — keep the WHY, drop the WHEN/WHO/HOW-we-got-here. A comment with no signal once the narrative is stripped should just be deleted.

5. **Re-run the relevant test suite** after making these edits. Comment/docstring-only changes are low-risk, but edits made while cleaning up a docstring can accidentally touch adjacent code — verify rather than assume.

6. **Re-confirm scope.** Run `git status`/`git diff --stat` again and check it still matches step 1's intended file set — nothing unrelated got touched by the cleanup pass itself.

## Output

Report concisely:
- What was rewritten or removed, file by file (one line each is enough).
- Confirmation the test suite still passes (or that no test suite applies).
- Confirmation the diff scope is unchanged from before the cleanup pass.

Do not add new comments, refactor logic, or fix unrelated issues you notice along the way — flag them separately instead of folding them into this pass.
