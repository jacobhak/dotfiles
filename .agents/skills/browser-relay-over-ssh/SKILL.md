---
name: browser-relay-over-ssh
description: Connect an OMP agent running on a remote SSH host to Chrome on the SSH client through OMP Browser Relay and a loopback-only SSH local port forward. Use when configuring, diagnosing, or safely operating relay-controlled local Chrome from a remote OMP session.
---

# OMP Browser Relay over SSH

Use this only when the OMP agent runs on a different machine from the user's Chrome.

## Topology

The Chrome extension connects to a loopback relay endpoint on the Chrome machine. OMP's browser tool runs the relay daemon on the agent host. Bridge those two loopback endpoints with a local SSH forward:

```text
Chrome extension → client 127.0.0.1:9224
                       │
                       └─ SSH local forward → remote 127.0.0.1:9224 → OMP relay daemon
```

The forward must originate on the **Chrome client**, not in the remote tmux/SSH shell. No public listener, inbound firewall rule, VNC, or remote desktop is required.

## Setup

1. Install and enable the OMP Browser Relay extension in the user's Chrome.
2. In extension settings, use relay port `9224`. Leave Token blank unless the remote relay was deliberately configured with a token; the values must match.
3. On the Chrome client, in a separate terminal, open and keep open this local forward:

   ```bash
   ssh -N -L 127.0.0.1:9224:127.0.0.1:9224 <ssh-host-alias>
   ```

   `<ssh-host-alias>` is the normal SSH config alias (for example, `dev-vm`), so `HostName`, `User`, `IdentityFile`, `ProxyJump`, and other `~/.ssh/config` settings apply automatically.
4. From the remote OMP session, open the browser with `app.relay: true`. On CLI hosts this starts the remote loopback relay daemon automatically and waits for the extension handshake.
5. Target an explicitly identified page by URL/title substring. Do not use an unqualified relay attach merely to find a page: it can adopt a visible tab. For a connection test, use a user-designated harmless test tab and make no page changes.

## Diagnose

- `channel ... open failed: connect failed: Connection refused` in the client SSH terminal means the SSH forward is working but remote `127.0.0.1:9224` had no listener. Start the relay by opening the remote browser tool with `app.relay: true`, then let the extension reconnect or toggle/reload it.
- A browser-tool error saying the extension never connected means inspect the extension's enabled/badge state, confirm the SSH forward is still running on the Chrome client, and confirm both sides use the same port and token.
- If the SSH command itself cannot resolve or authenticate the alias, fix the user's normal SSH configuration; the relay is not involved.

## Operational boundaries

- Release a managed relay tab when finished. Releasing disconnects OMP; it does not close or alter the user's Chrome tab.
- Do not navigate the user's visible tab without an explicit task and target.
- Require explicit user confirmation before checkout, payment, subscription acceptance, or any other consequential action.
- Keep the extension, relay, and SSH forward loopback-bound. If a token is configured, treat it as a secret and do not print it.
