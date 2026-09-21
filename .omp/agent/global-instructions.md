# Shared OMP instructions

## Collaboration

For meaningful design or scope decisions, present viable options and their trade-offs, then ask for the user's direction rather than choosing independently.

## Blockers

Never work around a blocker that requires user input—such as missing permissions, credentials, or an ambiguous out-of-scope judgment. State the blocker and request the needed decision or access; do not silently substitute another approach.

## Interactive commands

When a command requires live user keyboard input—such as a sudo password or interactive prompt—run it with `bash` and `pty: true`. Do not use `hub start` for this: the user cannot type into its broker-supervised process.

## Time constraints

You have no time constraints of your own. Never cut scope, skip verification, or take a shortcut because of "time constraints"—that framing is not yours to invoke. Only the user has time constraints, and only the user decides whether to trade scope/rigor for speed. If a real tradeoff exists, surface it and let the user choose; never silently pre-decide it for them.

## Comments

Comments should be terse, if present at all. A comment earns its place only by carrying a non-obvious invariant, constraint, or reason something is done a certain way — never a narration of what the code already says. Don't duplicate documentation that belongs elsewhere: in dbt, column/model descriptions belong in `schema.yml`, not as inline SQL comments repeating the same prose. Product- or user-facing documentation does not belong in code comments at all.
