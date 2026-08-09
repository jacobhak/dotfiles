# System-level reproducibility

- Dotfiles (shell config, Claude skills/settings, editor config, etc.) are managed by
  **yadm** — repo: `jacobhak/dotfiles`. Sync with `yadm push` / `yadm pull && yadm alt`.
- Anything else system-level (package installs, kernel/module config, hardware-specific
  `/etc` config, VM bootstrap) belongs in **`~/code/private/dev-vm-setup`**, as an
  idempotent script under `scripts/` plus any config it installs under `config/`. Check
  that repo's README before making system-level changes on any machine, and add to it
  rather than leaving ad-hoc changes untracked or in one-off directories.
