# Adding a tool

## The test

> **Would this still make sense on a stranger's laptop?**

No account of ours, no network of ours, no configuration files of ours. If a tool needs any of those to be useful, it belongs in our internal repository instead — not because it is secret, but because it would not work for anyone else.

## What is refused, and why it is a hook rather than a habit

`.githooks/pre-commit` refuses a commit carrying an internal address, an internal hostname, a capability path, or a value named as a credential. **A public destination cannot be protected by remembering to check** — so the check runs whether or not anyone remembered it.

Enable it once per clone (git does not install hooks for you):

```sh
git config core.hooksPath .githooks
```

⚠️ The gate **fails closed**: if it cannot complete, it refuses the commit rather than passing it. A guard that silently does not run is worse than no guard, because it manufactures confidence.

## Shape

- One tool, one file, executable, with a `#!` line.
- `--version` prints `name/major.minor`; `--help` prints usage.
- No hard-coded paths outside the tool's own arguments and environment.
