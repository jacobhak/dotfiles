# System-level reproducibility

This machine's configuration MUST stay reproducible at all times. Never edit a config
file, install a package, or change system state directly/ad hoc — every change must go
through one of the two mechanisms below. Before touching any file outside a project
repo, first determine which mechanism owns it (see the checks under each bullet), make
the change there, and only then let it land on disk. If it's unclear which mechanism
applies, stop and ask rather than editing directly.

- Dotfiles (shell config, Claude skills/settings, editor config, etc.) are managed by
  **yadm** — repo: `jacobhak/dotfiles`. Sync with `yadm push` / `yadm pull && yadm alt`.
  Before editing any file under `~/.config/`, `~/.local/bin/`, or similar, run
  `yadm list | grep <path>` first. If it shows a `##class...,template` suffix, the file
  on disk is generated — edit the `##class...,template` source instead, then run
  `yadm alt` to regenerate the output before validating/reloading.
- Anything else system-level (package installs, kernel/module config, hardware-specific
  `/etc` config, VM bootstrap) belongs in **`~/code/private/dev-vm-setup`**, as an
  idempotent script under `scripts/` plus any config it installs under `config/`. Check
  that repo's README before making system-level changes on any machine, and add to it
  rather than leaving ad-hoc changes untracked or in one-off directories.
