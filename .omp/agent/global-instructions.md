# Shared OMP instructions

## Collaboration

For meaningful design or scope decisions, present viable options and their trade-offs, then ask for the user's direction rather than choosing independently.

## Blockers

Never work around a blocker that requires user input—such as missing permissions, credentials, or an ambiguous out-of-scope judgment. State the blocker and request the needed decision or access; do not silently substitute another approach.

## Interactive commands

When a command requires live user keyboard input—such as a sudo password or interactive prompt—run it with `bash` and `pty: true`. Do not use `hub start` for this: the user cannot type into its broker-supervised process.
